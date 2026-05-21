# 🚨 Common Pitfalls & Solutions

*Stuck? You're probably hitting one of these. Here's how to fix it.*

---

## Table of Contents

1. [Installation & Setup](#1-installation--setup)
2. [Model Loading & Memory Issues](#2-model-loading--memory-issues)
3. [Dataset & Data Issues](#3-dataset--data-issues)
4. [Model Performance Problems](#4-model-performance-problems)
5. [Preprocessing & Language-Specific Issues](#5-preprocessing--language-specific-issues)
6. [Benchmarking & Evaluation](#6-benchmarking--evaluation)
7. [Text Format & Encoding Issues](#7-text-format--encoding-issues)
8. [When to Use Which Tool](#8-when-to-use-which-tool)

---

## 1. Installation & Setup

### "ImportError: No module named 'transformers'"

**Problem:** You forgot to install the required libraries.

**Solution:**

```bash
# For Google Colab (paste in a cell):
!pip install transformers datasets torch

# For local Python:
pip install transformers datasets torch

# For M1/M2 Macs (alternative installation):
pip install --upgrade torch transformers
```

**If you get dependency conflicts:**

```bash
# Create a fresh virtual environment
python -m venv nlp_env
source nlp_env/bin/activate  # On Windows: nlp_env\Scripts\activate
pip install transformers datasets torch
```

---

### "ModuleNotFoundError: No module named 'tensorflow'"

**Problem:** TensorFlow isn't installed, but you're trying to use a TensorFlow model.

**Solution:** Either install TensorFlow or switch to PyTorch versions:

```bash
# Option 1: Install TensorFlow
pip install tensorflow

# Option 2: Use PyTorch instead (recommended for Indonesian models)
# Most Indonesian models are available in PyTorch
model = AutoModel.from_pretrained("indobenchmark/indobert-base-p1", framework="pt")
```

---

### "SSL: CERTIFICATE_VERIFY_FAILED when downloading models"

**Problem:** Certificate verification issue when downloading models.

**Solution:**

```bash
# Option 1: Trust HuggingFace servers (temporary fix)
export CURL_CA_BUNDLE=""

# Option 2: Disable SSL temporarily (not recommended for production)
import ssl
ssl._create_default_https_context = ssl._create_unverified_context

# Option 3: Install certificates (macOS)
# Go to Applications > Python 3.x > Install Certificates.command
```

---

## 2. Model Loading & Memory Issues

### "CUDA out of memory"

**Problem:** Your GPU doesn't have enough memory to load the model.

**Solution:** Try these in order:

```python
# 1. Reduce batch size (first try this)
batch_size = 8  # Instead of 16 or 32

# 2. Use a smaller model
model_name = "indobenchmark/indobert-base-p1"  # Instead of the "large" version

# 3. Use 8-bit quantization (reduces memory by ~4x)
from transformers import AutoModelForSequenceClassification
model = AutoModelForSequenceClassification.from_pretrained(
    model_name,
    load_in_8bit=True,
    device_map="auto"
)

# 4. Use 4-bit quantization (extreme case, but works)
from transformers import BitsAndBytesConfig
bnb_config = BitsAndBytesConfig(
    load_in_4bit=True,
    bnb_4bit_use_double_quant=True,
    bnb_4bit_quant_type="nf4",
    bnb_4bit_compute_dtype=torch.bfloat16
)
model = AutoModelForSequenceClassification.from_pretrained(
    model_name,
    quantization_config=bnb_config
)

# 5. Use CPU instead (slow but works)
model = model.to("cpu")
```

**If on Google Colab:**

```python
# Check GPU availability
import torch
print(torch.cuda.is_available())  # Should be True
print(torch.cuda.get_device_name())  # Should show GPU type

# If False, go to Runtime → Change runtime type → GPU
```

---

### "Model loading takes forever on first run"

**Problem:** Model is being downloaded for the first time.

**Solution:** This is normal. The first download can take 5-15 minutes depending on model size. It gets cached locally after.

```python
# Check download progress in terminal
# Or use tqdm for progress bar
from tqdm.auto import tqdm

# If you want to manually download before running:
from transformers import AutoModel
model = AutoModel.from_pretrained("indobenchmark/indobert-base-p1")
```

---

### "RuntimeError: Expected all tensors to be on the same device"

**Problem:** Model and data are on different devices (GPU vs CPU).

**Solution:**

```python
# Move model to GPU
model = model.to("cuda")

# OR move input tensors to GPU
inputs = tokenizer(text, return_tensors="pt").to("cuda")

# Check where model is
print(next(model.parameters()).device)  # Should show 'cuda:0' or 'cpu'
```

---

## 3. Dataset & Data Issues

### "FileNotFoundError: Can't find the dataset"

**Problem:** The dataset doesn't exist or you misspelled the name.

**Solution:**

```python
# Check available datasets
from datasets import list_datasets
all_datasets = list_datasets()
print("indonlu" in all_datasets)  # Should be True

# Correct way to load:
from datasets import load_dataset
dataset = load_dataset("indonlp/indonlu", "smsa")  # Note: "indonlp", not "indo"

# Browse available splits:
dataset_info = load_dataset("indonlp/indonlu", "smsa")
print(dataset_info.keys())  # Shows: ['train', 'validation', 'test']
```

---

### "Dataset too large, can't fit in memory"

**Problem:** Loading a large dataset crashes your computer.

**Solution:**

```python
# Stream the dataset (load in batches, not all at once)
dataset = load_dataset("id_liputan6", split="train", streaming=True)

# Process in batches
batch_size = 100
for i, batch in enumerate(dataset.batches(batch_size)):
    print(f"Processing batch {i}")
    # Process batch here

# Or load only a subset
from datasets import load_dataset
dataset = load_dataset("id_liputan6", split="train[:10%]")  # Load only 10%
```

---

### "Uneven label distribution in my dataset"

**Problem:** Your dataset has way more negative examples than positive, skewing training.

**Solution:**

```python
from datasets import load_dataset
from sklearn.utils import class_weight
import numpy as np

dataset = load_dataset("indonlp/indonlu", "smsa")

# Check label distribution
labels = dataset["train"]["label"]
print(f"Label distribution: {np.bincount(labels)}")

# Option 1: Use class weights during training
class_weights = class_weight.compute_class_weight(
    'balanced',
    classes=np.unique(labels),
    y=labels
)
print(f"Class weights: {class_weights}")

# Option 2: Upsample minority class
from datasets import concatenate_datasets

minority_data = dataset["train"].filter(lambda x: x["label"] == 1)  # Positive
majority_data = dataset["train"].filter(lambda x: x["label"] == 0)  # Negative

# Repeat minority class
upsampled = concatenate_datasets([majority_data, minority_data, minority_data])
```

---

## 4. Model Performance Problems

### "My fine-tuned model doesn't perform better than the baseline"

**Problem:** Fine-tuning isn't helping, or performance is worse.

**Possible causes & solutions:**

```python
# 1. Learning rate too high (common issue)
# Try smaller learning rate
training_args = TrainingArguments(
    learning_rate=2e-5,  # Try 1e-5 or 5e-6
    num_train_epochs=3,
)

# 2. Not enough training data (less than 500 examples)
# Try different approach:
# - Use zero-shot classification instead
# - Get more data
# - Use data augmentation

# 3. Dataset is too different from pre-training data
# Try transfer learning from similar language/domain

# 4. Check that your evaluation metric is appropriate
# For imbalanced data, use F1-score instead of accuracy
from sklearn.metrics import f1_score
```

---

### "My model works on training data but fails on test data (overfitting)"

**Problem:** Model learned training data too well and doesn't generalize.

**Solution:**

```python
# 1. Add more regularization (dropout, weight decay)
training_args = TrainingArguments(
    weight_decay=0.01,  # Increase from 0.01 to 0.1
    dropout=0.3,  # Add dropout
)

# 2. Train for fewer epochs
num_train_epochs=1  # Instead of 3

# 3. Use data augmentation
# Generate more varied examples
```

---

### "My model works on formal text but fails on social media / slang"

**Problem:** Model was trained on formal Bahasa but real-world text is informal.

**Causes & solutions:**

```python
# 1. Use a model trained on social media text
from transformers import pipeline

# Use IndoBERTweet instead of IndoBERT
classifier = pipeline(
    "text-classification",
    model="indolem/indobertweet-base-uncased"  # Trained on Twitter data
)

# 2. Preprocess slang/informal text
from datasets import load_dataset

# Load slang dictionary
# See: https://github.com/louisowen6/NLP_bahasa_resources
slang_dict = {
    "gw": "saya",
    "lu": "kamu",
    "gabisa": "tidak bisa",
    "mager": "malas gerak",
}

def normalize_slang(text):
    for slang, formal in slang_dict.items():
        text = text.replace(slang, formal)
    return text

# 3. Train on informal data
# Use [Indonesian Twitter Emotion](README.md#text-classification) or [ID Multi-Label Hate Speech](README.md#hate-speech--abusive-language) which have social media text
```

---

## 5. Preprocessing & Language-Specific Issues

### "Tokenization is splitting Indonesian words incorrectly"

**Problem:** The tokenizer is breaking words in unexpected ways.

**Example:** "mempermakankan" gets split into weird subwords instead of being stemmed first.

**Solution:**

```python
from transformers import AutoTokenizer
from PySastrawi.Stemmer import StemmerFactory

# Get Indonesian stemmer
factory = StemmerFactory()
stemmer = factory.create_stemmer()

# Text with complex morphology
text = "Mereka mempermakankan anak-anak itu makanan bergizi"

# Option 1: Stem before tokenizing (recommended for Indonesian)
stemmed = " ".join([stemmer.stem(word) for word in text.split()])
print(f"Stemmed: {stemmed}")

tokens = tokenizer.encode(stemmed)
print(f"Tokens: {tokens}")

# Option 2: Use Indonesian-aware tokenizer
from transformers import AutoTokenizer
tokenizer = AutoTokenizer.from_pretrained("indobenchmark/indobert-base-p1")
# This one already knows Indonesian morphology better
```

**Install Sastrawi:**

```bash
pip install PySastrawi
```

---

### "My model doesn't understand slang or informal words"

**Problem:** Words like "gw", "lu", "gabisa" aren't in the vocabulary.

**Solution:**

```python
# 1. Use a slang dictionary to normalize
slang_dict_url = "https://raw.githubusercontent.com/louisowen6/NLP_bahasa_resources/master/combined_slang_words.txt"

# Download and load
import requests
slang_dict = {}
response = requests.get(slang_dict_url)
for line in response.text.split('\n'):
    if ':' in line:
        slang, formal = line.split(':')
        slang_dict[slang.strip()] = formal.strip()

def normalize_text(text):
    words = text.split()
    normalized = []
    for word in words:
        normalized.append(slang_dict.get(word, word))
    return " ".join(normalized)

# Test it
text = "Gw mau pergi tapi lu nggak bisa ikut"
print(normalize_text(text))  # Should normalize to formal

# 2. Or use Kamusalay (informal word mapping)
# From: https://github.com/okkyibrohim/id-multi-label-hate-speech-and-abusive-language-detection
```

---

### "Stop words are removing important information"

**Problem:** Stop words removal is too aggressive.

**Solution:**

```python
# Indonesian stop words
from nltk.corpus import stopwords
import nltk

nltk.download('stopwords')
stop_words = set(stopwords.words('indonesian'))

# Don't remove all stop words blindly
# Instead, be selective
def remove_stop_words(text, aggressive=False):
    words = text.split()
    if aggressive:
        # Remove all stop words (loses information)
        return " ".join([w for w in words if w not in stop_words])
    else:
        # Keep negations and important words
        important_stops = {'tidak', 'bukan', 'jangan', 'tidak'}  # These matter for sentiment
        return " ".join([w for w in words if w not in (stop_words - important_stops)])

# Better approach: let the model learn what's important
# Only remove stop words if necessary
```

---

## 6. Benchmarking & Evaluation

### "My accuracy is 45%, is that good?"

**Problem:** You don't know if your performance is acceptable.

**Solution:**

```python
# Compare to benchmark leaderboards

# For sentiment (SmSA):
# - State-of-art: ~92% (IndoBERT)
# - Your 45% is... not good. Check for bugs.

# For NER (NER-Grit):
# - State-of-art: ~85% (F1 score)

# Check IndoNLU Leaderboard for all tasks:
# https://www.indobenchmark.com

# For LLMs, use IndoMMLU:
# Most open Indonesian LLMs only pass primary school level (~30-40% accuracy)

# General baseline:
# - Random guess on 3-class problem: 33%
# - If you're below 60% on common tasks, something is wrong
```

---

### "I'm comparing two models but the results are inconsistent"

**Problem:** Model A scores 85% one run, 78% the next. Something's wrong.

**Solution:**

```python
# Set random seed for reproducibility
import numpy as np
import torch
import random

def set_seed(seed=42):
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)
    random.seed(seed)

set_seed(42)

# Now run your evaluation multiple times — results should be consistent

# Also check:
# 1. Are you using the same test set?
# 2. Is batch size different? (can affect results)
# 3. Is dropout enabled during evaluation? (should be disabled)

from transformers import Trainer
model.eval()  # Disable dropout and batch norm randomness
```

---

## 7. Text Format & Encoding Issues

### "UnicodeDecodeError: 'utf-8' codec can't decode byte"

**Problem:** Text file has wrong encoding.

**Solution:**

```python
# Read file with correct encoding detection
import chardet

# Detect encoding
with open('file.txt', 'rb') as f:
    result = chardet.detect(f.read())
    encoding = result['encoding']

print(f"Detected encoding: {encoding}")

# Read with detected encoding
with open('file.txt', encoding=encoding) as f:
    text = f.read()

# Or try common alternatives
encodings = ['utf-8', 'latin-1', 'cp1252', 'iso-8859-1']
for enc in encodings:
    try:
        with open('file.txt', encoding=enc) as f:
            text = f.read()
        print(f"Success with {enc}")
        break
    except UnicodeDecodeError:
        continue
```

---

### "Text contains HTML tags / URLs / emojis"

**Problem:** Your text is messy and contains unwanted formatting.

**Solution:**

```python
import re
import html

def clean_text(text):
    # Remove URLs
    text = re.sub(r'http\S+|www\S+', '', text)
    
    # Remove email addresses
    text = re.sub(r'\S+@\S+', '', text)
    
    # Decode HTML entities
    text = html.unescape(text)
    
    # Remove HTML tags
    text = re.sub(r'<[^>]+>', '', text)
    
    # Remove extra whitespace
    text = re.sub(r'\s+', ' ', text).strip()
    
    # Remove emojis (optional)
    text = text.encode('ascii', 'ignore').decode('ascii')
    
    return text

# Test
dirty_text = "Saya suka produk ini! 😍 Check: https://tokopedia.com <p>HTML</p>"
print(clean_text(dirty_text))
```

---

## 8. When to Use Which Tool

### "Should I use IndoBERT or IndoBERTweet?"

| Situation | Use |
|-----------|-----|
| Formal text (news, Wikipedia, books) | IndoBERT |
| Social media (Twitter, Instagram, Facebook) | IndoBERTweet |
| Mixed or unsure | Try both and compare |

---

### "Should I use mBERT, XLM-RoBERTa, or IndoBERT?"

| Model | Best For | Speed | Size |
|-------|----------|-------|------|
| **IndoBERT** | Indonesian-only tasks | Fast | 110M |
| **XLM-RoBERTa** | Multilingual, Indonesian + other languages | Fast | 125M |
| **mBERT** | Multilingual, slower but good coverage | Medium | 110M |

**Rule of thumb:** Use IndoBERT for Indonesian-specific work, XLM-RoBERTa if you need multilinguality.

---

### "Should I fine-tune or use zero-shot?"

| Approach | When to Use |
|----------|------------|
| **Fine-tuning** | You have 100+ labeled examples |
| **Few-shot** | You have 10-50 labeled examples |
| **Zero-shot** | You have 0 labeled examples or limited data |

```python
# Zero-shot example (no fine-tuning needed)
from transformers import pipeline

classifier = pipeline("zero-shot-classification", model="xlm-roberta-base")
result = classifier(
    "Produk ini bagus",
    ["positive", "negative", "neutral"]
)
print(result)  # Will work even without training data
```

---

### "Should I use a small 7B LLM or a massive 70B model?"

| Model Size | Best For | Speed | Cost |
|-----------|----------|-------|------|
| **7B** | Quick experiments, local inference | Fast | Cheap |
| **13B** | Production, good quality | Medium | Medium |
| **70B+** | Maximum quality, research | Slow | Expensive |

---

## Quick Diagnostic Checklist

**Model isn't working? Check in this order:**

- [ ] Is the model installed? (`pip list | grep transformers`)
- [ ] Is your GPU available? (`torch.cuda.is_available()`)
- [ ] Is your data in the right format?
- [ ] Does your text have encoding issues? (Try `text.encode('utf-8')`)
- [ ] Are you using the right model for your language/domain?
- [ ] Is batch size reasonable for your GPU?
- [ ] Have you set random seed for reproducibility?
- [ ] Are evaluation metrics appropriate for your task?

**Still stuck?** → [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues)

---

*← Back to [README.md](README.md) · [QUICK-START.md](QUICK-START.md)*
