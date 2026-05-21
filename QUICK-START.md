# 🚀 Quick Start — Get Running in 5 Minutes

*No prerequisites. Just copy, paste, and run. All examples use Google Colab (free, no setup).*

---

## Table of Contents

1. [Sentiment Analysis](#1-sentiment-analysis)
2. [Load an Indonesian Dataset](#2-load-an-indonesian-dataset)
3. [Fine-tune IndoBERT](#3-fine-tune-indobert-on-your-data)
4. [Test a Regional Language Model](#4-test-a-regional-language-model)
5. [Generate Text with an LLM](#5-generate-text-with-an-llm)
6. [Named Entity Recognition](#6-named-entity-recognition)

---

## 1. Sentiment Analysis

**Time:** 2 minutes | **Task:** Classify Indonesian text as positive/negative/neutral

Copy this into a Google Colab cell and run it:

```python
from transformers import pipeline

# Load a pre-trained Indonesian sentiment classifier
classifier = pipeline(
    "text-classification",
    model="mdhugol/indonesia-bert-sentiment-classification"
)

# Test it
texts = [
    "Produk ini sangat bagus dan memuaskan!",
    "Kualitasnya buruk, sangat mengecewakan",
    "Barang biasa aja sih, standar"
]

for text in texts:
    result = classifier(text)
    print(f"Text: {text}")
    print(f"Result: {result}\n")
```

**Expected output:**
```
Text: Produk ini sangat bagus dan memuaskan!
Result: [{'label': 'POSITIVE', 'score': 0.98}]

Text: Kualitasnya buruk, sangat mengecewakan
Result: [{'label': 'NEGATIVE', 'score': 0.97}]
```

**Next steps:**
- Want to fine-tune on your own data? → See [Section 3](#3-fine-tune-indobert-on-your-data)
- Want to use on Twitter data? → Use `indolem/indobertweet-base-uncased` instead
- Need a benchmark to compare? → Check [IndoNLU Leaderboard](https://www.indobenchmark.com)

---

## 2. Load an Indonesian Dataset

**Time:** 2 minutes | **Task:** Load real Indonesian NLP datasets

```python
from datasets import load_dataset

# Load SmSA (Sentiment analysis dataset)
print("Loading SmSA sentiment dataset...")
dataset = load_dataset("indonlp/indonlu", "smsa")

# Explore the data
print(f"Number of training examples: {len(dataset['train'])}")
print(f"Number of test examples: {len(dataset['test'])}")

# Look at a few examples
print("\nFirst 3 examples:")
for i in range(3):
    example = dataset["train"][i]
    print(f"Text: {example['text']}")
    print(f"Label: {example['label']} (0=negative, 1=neutral, 2=positive)\n")
```

**Try other datasets:**

```python
# Named Entity Recognition (NER)
ner_dataset = load_dataset("indonlp/nusacrowd", "nergrit_nlu")

# Question Answering
qa_dataset = load_dataset("indonlp/IndoQA")

# Machine Translation (Indonesian → English)
mt_dataset = load_dataset("indonlp/NusaX-MT")

# Text Summarization
sum_dataset = load_dataset("id_liputan6")

# Regional languages (e.g., Javanese sentiment)
regional_dataset = load_dataset("indonlp/nusax", "jv")
```

**Where to find more:** [NusaCrowd](https://github.com/IndoNLP/nusacrowd) has 137+ Indonesian datasets with unified loaders.

---

## 3. Fine-tune IndoBERT on Your Data

**Time:** 5–10 minutes | **Task:** Adapt a pre-trained model to your specific task

This example fine-tunes IndoBERT for sentiment analysis, but the pattern works for any classification task.

```python
import torch
from transformers import AutoTokenizer, AutoModelForSequenceClassification, TrainingArguments, Trainer
from datasets import load_dataset

# 1. Load pre-trained model and tokenizer
model_name = "indobenchmark/indobert-base-p1"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForSequenceClassification.from_pretrained(model_name, num_labels=3)

# 2. Load your dataset
dataset = load_dataset("indonlp/indonlu", "smsa")

# 3. Tokenize the data
def tokenize_function(examples):
    return tokenizer(
        examples["text"],
        padding="max_length",
        truncation=True,
        max_length=128
    )

tokenized_dataset = dataset.map(tokenize_function, batched=True)

# 4. Set up training
training_args = TrainingArguments(
    output_dir="./results",
    num_train_epochs=3,
    per_device_train_batch_size=16,
    per_device_eval_batch_size=16,
    warmup_steps=100,
    weight_decay=0.01,
    logging_dir="./logs",
    logging_steps=100,
)

trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=tokenized_dataset["train"],
    eval_dataset=tokenized_dataset["validation"],
)

# 5. Train!
trainer.train()

# 6. Save your fine-tuned model
model.save_pretrained("./my-indobert-sentiment")
tokenizer.save_pretrained("./my-indobert-sentiment")

print("✅ Fine-tuning complete! Model saved to ./my-indobert-sentiment")
```

**To use your fine-tuned model:**

```python
from transformers import pipeline

classifier = pipeline(
    "text-classification",
    model="./my-indobert-sentiment"
)

result = classifier("Produk ini bagus!")
print(result)
```

**Tips:**
- Start with a smaller dataset? Use `num_train_epochs=1` first
- Out of memory? Reduce `per_device_train_batch_size` to 8
- Want to use a different model? Replace `model_name` with another from [the models list](README.md#-pre-trained-models)

---

## 4. Test a Regional Language Model

**Time:** 3 minutes | **Task:** Use NLP on Indonesian local languages (Javanese, Sundanese, etc.)

```python
from transformers import pipeline
from datasets import load_dataset

# 1. Load a dataset in a regional language
print("Loading Javanese sentiment data...")
dataset = load_dataset("indonlp/nusax", "jv")  # "jv" = Javanese

print(f"Number of examples: {len(dataset['train'])}")
print("\nFirst example:")
example = dataset["train"][0]
print(f"Text (Javanese): {example['text']}")
print(f"Sentiment: {example['label']}\n")

# 2. Try a multilingual model on regional languages
classifier = pipeline(
    "text-classification",
    model="xlm-roberta-base"  # Works across 100+ languages
)

# Test on Javanese text
javanese_text = "Produk iki apik banget!"  # "This product is very good!" in Javanese
result = classifier(javanese_text)
print(f"Javanese text: {javanese_text}")
print(f"Result: {result}")
```

**Available regional languages in NusaX:**
- Javanese (jv), Sundanese (su), Balinese (ban), Acehnese (ace), Banjarese (bjn), Buginese (bug), Madurese (mad), Minangkabau (min), Ngaju (nah), Toba Batak (bbc)

**For more regional language resources:** See [Regional Languages section](README.md#regional-languages-of-indonesia) in the main README.

---

## 5. Generate Text with an LLM

**Time:** 5 minutes | **Task:** Generate Indonesian text with Cendol or Merak

```python
from transformers import AutoTokenizer, AutoModelForCausalLM

# Load Cendol (Indonesian LLM)
model_name = "indonlp/cendol-llama2-7b"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(
    model_name,
    torch_dtype="auto",
    device_map="auto"  # Automatically use GPU if available
)

# Define a prompt in Indonesian
prompt = """Jelaskan apa itu machine learning dalam Bahasa Indonesia.
Jelaskan dengan cara yang mudah dipahami:

"""

# Generate text
inputs = tokenizer(prompt, return_tensors="pt")
outputs = model.generate(
    **inputs,
    max_new_tokens=200,
    temperature=0.7,
    top_p=0.9,
)

generated_text = tokenizer.decode(outputs[0], skip_special_tokens=True)
print(generated_text)
```

**Alternative models to try:**
```python
# Merak 7B
model_name = "Ichsan2895/Merak-7B-v4"

# Komodo 7B (good for regional languages)
model_name = "Yellow-AI-NLP/komodo-7b-base"

# SeaLLM (multilingual SEA focus)
model_name = "SeaLLMs/SeaLLM-7B-v2"
```

**Note:** LLMs are resource-intensive. If you get memory errors:
- Use Google Colab with GPU (T4 or better)
- Try quantized versions (4-bit) for smaller memory footprint
- Or use HuggingFace Inference API (free tier available)

---

## 6. Named Entity Recognition

**Time:** 3 minutes | **Task:** Extract person names, locations, organizations from Indonesian text

```python
from transformers import pipeline

# Load NER model
ner_pipeline = pipeline(
    "token-classification",
    model="indobenchmark/indobert-base-p1",
    task="ner"
)

# Indonesian text
text = "Presiden Jokowi menghadiri acara di Jakarta bersama Gubernur DKI Anies."

# Run NER
entities = ner_pipeline(text)

print(f"Text: {text}\n")
print("Entities found:")
for entity in entities:
    print(f"  {entity['word']}: {entity['entity']}")
```

**Expected output:**
```
Entities found:
  Jokowi: PERSON
  Jakarta: LOCATION
  Anies: PERSON
```

**Using a dedicated NER model:**

```python
# More specialized NER model
ner_pipeline = pipeline(
    "token-classification",
    model="cahya/bert-base-indonesian-ner"
)

result = ner_pipeline("PT Gojek Indonesia didirikan oleh Nadiem Makarim di Jakarta")
for entity in result:
    print(f"{entity['word']}: {entity['entity']}")
```

**Learn more:** [NER Datasets & Models](README.md#named-entity-recognition)

---

## 🎯 What's Next?

- **Want to build something real?** → Check [ROADMAP.md](ROADMAP.md) for structured learning paths
- **Want to understand the concepts better?** → Read [START-HERE.md](START-HERE.md)
- **Want to explore more datasets?** → Browse the full [README.md](README.md)
- **Want to contribute?** → See [CONTRIBUTING.md](CONTRIBUTING.md)
- **Having issues?** → Jump to [Common Pitfalls](#common-pitfalls--solutions) (coming soon)

---

## Common Pitfalls & Solutions

### "ImportError: No module named 'transformers'"
```bash
# Install in Google Colab:
!pip install transformers datasets torch
```

### "CUDA out of memory"
```python
# Reduce batch size
per_device_train_batch_size = 8  # instead of 16

# Or use CPU
device = "cpu"
model = model.to(device)
```

### "Model loading takes forever"
This is normal for large models. First-time download can take a few minutes. It gets cached after.

### "My Indonesian text isn't working well"
- Check if the text is formal Bahasa Indonesia or social media / slang
  - Formal → use IndoBERT
  - Social media / Twitter → use IndoBERTweet
- Consider preprocessing with Sastrawi stemmer for better results

### "How do I run this locally without Google Colab?"
```bash
# Install Python 3.8+
pip install transformers datasets torch

# Then run the scripts locally
python your_script.py
```

---

*Still stuck? Open an issue or check [Where to Get Help](README.md#-getting-help)*
