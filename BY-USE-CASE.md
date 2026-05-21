# 🎯 By Use Case — Find Your Starting Point

*Not sure where to start? Pick your goal, and we'll point you to the right dataset, model, and code example.*

---

## Table of Contents

1. [Sentiment Analysis](#1-build-a-sentiment-analyzer)
2. [Chatbot / QA System](#2-build-a-chatbot-or-qa-system)
3. [Named Entity Recognition](#3-extract-names-and-entities)
4. [Text Classification](#4-categorize-text-automatically)
5. [Text Summarization](#5-auto-summarize-long-documents)
6. [Machine Translation](#6-translate-indonesian-to-english-or-vice-versa)
7. [Speech Recognition](#7-convert-indonesian-speech-to-text)
8. [Regional Language Project](#8-work-with-regional-languages)
9. [Academic Research](#9-publish-research-on-indonesian-nlp)

---

## 1. Build a Sentiment Analyzer

**What it does:** Classifies Indonesian text as positive, negative, or neutral.

**When to use:** Analyzing product reviews, social media feedback, customer satisfaction, brand monitoring.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [SmSA](https://github.com/indobenchmark/indonlu) (3k examples) | Clean, well-labeled, from product reviews |
| **Model** | [IndoBERT](https://huggingface.co/indobenchmark/indobert-base-p1) | Most widely used, best for formal text |
| **Alternative Model** | [IndoBERTweet](https://huggingface.co/indolem/indobertweet-base-uncased) | Better for Twitter/social media |
| **Evaluation** | [IndoNLU Benchmark](https://www.indobenchmark.com) | Standard 80%+ accuracy target |
| **Production** | [HuggingFace Inference API](https://huggingface.co/inference-api) | Free tier available, no setup |

### Quick Start Code

```python
from transformers import pipeline

# Option 1: Use a pre-trained sentiment model directly
classifier = pipeline(
    "text-classification",
    model="mdhugol/indonesia-bert-sentiment-classification"
)

# Test it
texts = [
    "Produk ini bagus dan sesuai ekspektasi!",
    "Kecewa, tidak sesuai dengan deskripsi",
]

for text in texts:
    result = classifier(text)
    print(f"{text} → {result[0]['label']}")
```

**Next steps:**
- [ ] Load [SmSA dataset](QUICK-START.md#2-load-an-indonesian-dataset)
- [ ] Fine-tune IndoBERT on your own data ([see QUICK-START.md](QUICK-START.md#3-fine-tune-indobert-on-your-data))
- [ ] Compare your score to [IndoNLU leaderboard](https://www.indobenchmark.com)
- [ ] Evaluate on social media text? Try IndoBERTweet instead

**See also:** [Sentiment Analysis section](README.md#sentiment-analysis) in main README

---

## 2. Build a Chatbot or QA System

**What it does:** Answer questions based on provided context, or have open-ended conversations.

**When to use:** Customer support bots, FAQ answering, document Q&A, conversational AI.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Model (Chat)** | [Cendol](https://huggingface.co/indonlp/cendol-llama2-7b) | Most capable open Indonesian LLM |
| **Model (QA)** | [Kancil V0](https://huggingface.co/afrizalha/Kancil-V0-llama3) | Specialized for QA tasks |
| **Dataset** | [IndoQA](https://huggingface.co/datasets/indonlp/IndoQA) | 10k+ Indonesian QA pairs |
| **Evaluation** | [IndoMMLU](https://github.com/fajri91/IndoMMLU) | Benchmark for LLM knowledge |
| **Hosting** | [Ollama](https://ollama.ai) (local) or [HuggingFace Spaces](https://huggingface.co/spaces) | Run locally or in the cloud |

### Quick Start Code

```python
from transformers import AutoTokenizer, AutoModelForCausalLM

# Load Cendol (Indonesian LLM)
model_name = "indonlp/cendol-llama2-7b"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(
    model_name,
    torch_dtype="auto",
    device_map="auto"
)

# Ask a question
prompt = """Pertanyaan: Siapa presiden Indonesia?
Jawab:"""

inputs = tokenizer(prompt, return_tensors="pt")
outputs = model.generate(**inputs, max_new_tokens=100)
answer = tokenizer.decode(outputs[0], skip_special_tokens=True)
print(answer)
```

**Important notes:**
- LLMs need significant GPU memory (7B model needs ~14GB, or ~4-6GB with quantization)
- For production, use HuggingFace Inference API or Ollama
- Test honestly on [IndoMMLU](https://github.com/fajri91/IndoMMLU) — most Indonesian LLMs only pass primary school level exams

**Next steps:**
- [ ] Try Cendol, Merak 7B, and Komodo on real questions to see which works best for your use case
- [ ] Load [IndoQA dataset](QUICK-START.md#2-load-an-indonesian-dataset) to understand the QA format
- [ ] Fine-tune on your own QA data for better domain-specific performance
- [ ] Deploy with [Ollama](https://ollama.ai) for local inference or HuggingFace Spaces for sharing

**See also:** [Generative LLMs section](README.md#generative-llms) · [ROADMAP Path 3](ROADMAP.md#path-3-i-want-to-build-an-indonesian-llm-application)

---

## 3. Extract Names and Entities

**What it does:** Automatically identify and extract people's names, locations, organizations, etc. from text.

**When to use:** Information extraction, knowledge graphs, content enrichment, market research, document processing.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [NER-Grit](https://github.com/grit-id/nergrit-corpus) (11k sentences) | Most commonly used Indonesian NER dataset |
| **Specialized Dataset** | [ProNER](https://github.com/dziem/proner-labeled-text) | Product names (for e-commerce) |
| **Model** | [IndoBERT](https://huggingface.co/indobenchmark/indobert-base-p1) | Fine-tuned for NER |
| **Framework** | [Flair](https://github.com/flairNLP/flair) or [spaCy](https://spacy.io/models/id) | Production-ready NLP frameworks |
| **Evaluation** | [IndoNLU NER task](https://www.indobenchmark.com) | Standard benchmark |

### Quick Start Code

```python
from transformers import pipeline

# Use a pre-trained NER model
ner = pipeline(
    "token-classification",
    model="cahya/bert-base-indonesian-ner"
)

# Extract entities
text = "PT Gojek Indonesia didirikan oleh Nadiem Makarim di Jakarta pada 2010."
entities = ner(text)

print(f"Text: {text}\n")
for entity in entities:
    print(f"{entity['word']}: {entity['entity']}")
```

**With spaCy (production):**

```python
import spacy

# Load Indonesian spaCy model
nlp = spacy.load("id_core_news_sm")

# Process text
doc = nlp("Presiden Jokowi menghadiri acara di Jakarta")

# Extract entities
for ent in doc.ents:
    print(f"{ent.text}: {ent.label_}")
```

**Next steps:**
- [ ] Load [NER-Grit dataset](QUICK-START.md#2-load-an-indonesian-dataset) to understand the format
- [ ] Fine-tune on your domain-specific data (e.g., company names for e-commerce)
- [ ] Use spaCy for production — it's lightweight and fast
- [ ] Combine with other linguistic tools like dependency parsing for richer extraction

**See also:** [Named Entity Recognition section](README.md#named-entity-recognition)

---

## 4. Categorize Text Automatically

**What it does:** Classify Indonesian text into predefined categories.

**When to use:** News categorization, support ticket routing, content moderation, topic classification.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [IndoNLU Collection](https://github.com/indobenchmark/indonlu) | Multiple classification tasks |
| **Dataset (Simple)** | [ID Clickbait](https://huggingface.co/datasets/id_clickbait) | Binary classification: clickbait vs real |
| **Model** | [IndoBERT](https://huggingface.co/indobenchmark/indobert-base-p1) | Works for any classification task |
| **Evaluation** | [IndoNLU Benchmark](https://www.indobenchmark.com) | Compare your accuracy |
| **Production** | Any of the [Encoder Models](README.md#encoder-models-bert-based) | Fast inference, small size |

### Quick Start Code

```python
from transformers import pipeline

# Pre-trained text classification
classifier = pipeline(
    "text-classification",
    model="indobenchmark/indobert-base-p1"
)

# Classify news
texts = [
    "Gajah tersesat di Jakarta, ditemukan di Taman Margasatwa",
    "Tim basket Indonesia juara di SEA Games",
    "Pemerintah luncurkan program subsidi beras untuk rakyat",
]

for text in texts:
    result = classifier(text)
    print(f"{text[:50]}... → {result}")
```

**For custom categories, fine-tune on your data:**

```python
# See QUICK-START.md section 3 for full fine-tuning code
# Same process as sentiment analysis, just different labels
```

**Next steps:**
- [ ] Start with [sentiment analysis guide](#1-build-a-sentiment-analyzer) — it's the simplest classification
- [ ] Fine-tune on your specific categories ([QUICK-START.md](QUICK-START.md#3-fine-tune-indobert-on-your-data))
- [ ] Use the same fine-tuned model for production

**See also:** [Text Classification section](README.md#text-classification)

---

## 5. Auto-Summarize Long Documents

**What it does:** Condense long Indonesian text into shorter summaries.

**When to use:** News summarization, document processing, academic paper summarization, report generation.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [Liputan6](https://huggingface.co/datasets/id_liputan6) (215k+ pairs) | Largest Indonesian summarization dataset |
| **Alternative Dataset** | [IndoSum](https://github.com/kata-ai/indosum) (20k+ pairs) | High quality, from Kata.ai |
| **Model** | [IndoBART](https://huggingface.co/indobenchmark/indobart) | Best for generation tasks |
| **Evaluation** | [IndoNLG Benchmark](https://github.com/indobenchmark/indonlg) | Standard for text generation |
| **Production** | [HuggingFace Inference API](https://huggingface.co/inference-api) | Easy to deploy |

### Quick Start Code

```python
from transformers import pipeline

# Summarization model
summarizer = pipeline("summarization", model="indobenchmark/indobart")

# Indonesian news text
text = """
PT Pertamina mengumumkan peningkatan produksi minyak mentah Indonesia pada kuartal ketiga 2024.
Menurut laporan resmi, produksi meningkat sebesar 15% dibandingkan periode sebelumnya.
Peningkatan ini didorong oleh operasi tambahan di ladang minyak Brantas dan Kamojang.
Direktur Utama Pertamina mengatakan target produksi tahun ini akan tercapai dengan lancar.
"""

# Summarize
summary = summarizer(text, max_length=50, min_length=20, do_sample=False)
print(summary[0]['summary_text'])
```

**For longer documents:**

```python
# Break into chunks if text is too long
def summarize_long_text(text, model_name="indobenchmark/indobart"):
    from transformers import pipeline
    summarizer = pipeline("summarization", model=model_name)
    
    # Split into chunks (~1024 tokens each)
    chunks = [text[i:i+1024] for i in range(0, len(text), 1024)]
    
    summaries = []
    for chunk in chunks:
        summary = summarizer(chunk, max_length=50, min_length=20)
        summaries.append(summary[0]['summary_text'])
    
    return " ".join(summaries)
```

**Next steps:**
- [ ] Load [Liputan6 dataset](QUICK-START.md#2-load-an-indonesian-dataset) to see real examples
- [ ] Fine-tune IndoBART on your domain (e.g., legal documents, medical reports)
- [ ] Compare your summaries to [IndoNLG leaderboard](https://github.com/indobenchmark/indonlg)

**See also:** [Text Summarization section](README.md#text-summarization) · [IndoNLG Benchmark](README.md#-benchmarks--leaderboards)

---

## 6. Translate Indonesian to English (or Vice Versa)

**What it does:** Machine translation between Indonesian and English or Indonesian regional languages.

**When to use:** Translating user-generated content, localizing applications, cross-lingual search, multilingual support.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [NusaX-MT](https://huggingface.co/datasets/indonlp/NusaX-MT) | Indonesian + 10 regional languages |
| **Model** | [Aquamarine](https://huggingface.co/models?sort=trending&search=translation+indonesian) | Various translation models available |
| **Translation** | [Google Translate API](https://cloud.google.com/translate) | Easy, but less Indonesian-specific |
| **Benchmark** | [IndoNLG (MT task)](https://github.com/indobenchmark/indonlg) | Evaluate quality |

### Quick Start Code

```python
from transformers import pipeline

# Indonesian to English translation
translator = pipeline(
    "translation_id_to_en",
    model="Helsinki-NLP/opus-mt-id-en"
)

texts = [
    "Saya ingin pergi ke pantai besok.",
    "Makanan ini sangat lezat.",
]

for text in texts:
    result = translator(text)
    print(f"ID: {text}")
    print(f"EN: {result[0]['translation_text']}\n")
```

**For regional languages (Javanese, Sundanese, etc.):**

```python
from datasets import load_dataset

# Load Indonesian → Javanese parallel corpus
dataset = load_dataset("indonlp/NusaX-MT", "id-jv")

# View examples
for example in dataset["train"][:3]:
    print(f"ID: {example['source_text']}")
    print(f"JV: {example['target_text']}\n")
```

**Next steps:**
- [ ] Load [NusaX-MT dataset](QUICK-START.md#2-load-an-indonesian-dataset) for multilingual translation
- [ ] Fine-tune on your domain-specific text for better quality
- [ ] For production: use HuggingFace Inference API or Google Translate (but consider Indonesian-specific models)

**See also:** [Machine Translation section](README.md#machine-translation)

---

## 7. Convert Indonesian Speech to Text

**What it does:** Automatic Speech Recognition (ASR) — transcribe Indonesian audio to text.

**When to use:** Voice-to-text applications, meeting transcription, accessibility features, voice search.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [Common Voice Indonesian](https://huggingface.co/datasets/mozilla-foundation/common_voice_13_0) | Large, open-source |
| **Model** | [Whisper (OpenAI)](https://github.com/openai/whisper) | Multilingual, works well for Indonesian |
| **Specialized Model** | [LibriVox Indonesia](https://huggingface.co/datasets/indonesian-nlp/librivox-indonesia) | Clean, read speech |
| **Benchmark** | Not well-established yet | This is a research gap!|

### Quick Start Code

```python
import librosa
from transformers import pipeline

# Load Whisper (works in many languages including Indonesian)
asr = pipeline(
    "automatic-speech-recognition",
    model="openai/whisper-small"
)

# Transcribe an audio file
result = asr("path/to/indonesian_audio.wav")
print(f"Transcript: {result['text']}")
```

**Fine-tune Whisper on Indonesian:**

```python
from datasets import load_dataset
from transformers import WhisperProcessor, WhisperForConditionalGeneration

# Load Indonesian speech dataset
dataset = load_dataset("mozilla-foundation/common_voice_13_0", "id")

# Process and fine-tune (see full example in ROADMAP or research papers)
processor = WhisperProcessor.from_pretrained("openai/whisper-base")
model = WhisperForConditionalGeneration.from_pretrained("openai/whisper-base")

# ... fine-tuning code ...
```

**Next steps:**
- [ ] Try Whisper on your Indonesian audio files
- [ ] Fine-tune on [Common Voice Indonesian](https://huggingface.co/datasets/mozilla-foundation/common_voice_13_0) for better accuracy
- [ ] Consider building a benchmark — Indonesian ASR evaluation is a research gap!

**See also:** [Speech & ASR section](README.md#speech--asr) · [Research Gaps](README.md#-research-gaps)

---

## 8. Work with Regional Languages

**What it does:** NLP for Javanese, Sundanese, Balinese, and Indonesia's 700+ other languages.

**When to use:** Language preservation, regional content analysis, multilingual applications, underserved language research.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **All-in-one Hub** | [NusaCrowd](https://github.com/IndoNLP/nusacrowd) | 137 datasets across Indonesian + regional languages |
| **Sentiment Dataset** | [NusaX](https://github.com/IndoNLP/nusax) | Parallel sentiment across 10 languages |
| **Translation Dataset** | [NusaX-MT](https://huggingface.co/datasets/indonlp/NusaX-MT) | Parallel text across 12 languages |
| **High-Quality Text** | [NusaWrites](https://github.com/IndoNLP/nusa-writes) | Native speaker paragraphs in 12 regional languages |
| **Models** | [Komodo 7B](https://huggingface.co/Yellow-AI-NLP/komodo-7b-base) | LLM with strong regional language support |
| **Benchmark** | [LoraxBench](https://arxiv.org/abs/2508.12459) | 20 regional languages benchmark |

### Quick Start Code

```python
from datasets import load_dataset

# Load sentiment data in Javanese
print("Loading Javanese sentiment data...")
dataset = load_dataset("indonlp/nusax", "jv")

print(f"Examples: {len(dataset['train'])}")
for example in dataset["train"][:3]:
    print(f"Text (Javanese): {example['text']}")
    print(f"Sentiment: {example['label']}\n")
```

**Language codes available:**
- Javanese (jv), Sundanese (su), Balinese (ban), Acehnese (ace), Banjarese (bjn)
- Buginese (bug), Madurese (mad), Minangkabau (min), Ngaju (nah), Toba Batak (bbc)

**Use a multilingual model:**

```python
from transformers import pipeline

# XLM-RoBERTa works across 100+ languages
classifier = pipeline(
    "text-classification",
    model="xlm-roberta-base"
)

# Test on Sundanese
sundanese_text = "Panggon ieu alus pisan!"  # "This place is very good!" in Sundanese
result = classifier(sundanese_text)
print(result)
```

**Next steps:**
- [ ] Explore [NusaCrowd](https://github.com/IndoNLP/nusacrowd) for your target language
- [ ] Use [SEACrowd Catalogue](https://seacrowd.github.io/seacrowd-catalogue/) to filter by language
- [ ] Check data availability — some languages have very sparse resources
- [ ] Consider contributing new data if your language is underserved

**See also:** [Regional Languages section](README.md#regional-languages-of-indonesia) · [ROADMAP Path 4](ROADMAP.md#path-4-i-want-to-work-with-indonesian-regional-languages)

---

## 9. Publish Research on Indonesian NLP

**What it does:** Create a novel research contribution to Indonesian NLP.

**When to use:** Academic thesis, published research, conference submissions, advancing the field.

### Your Options

| Focus | Best For | Resources |
|-------|----------|-----------|
| **New Dataset** | Creating a dataset for an underserved task/domain | [Research Gaps section](README.md#-research-gaps) |
| **New Model** | Fine-tuning or adapting models to Indonesian | [Models section](README.md#-pre-trained-models) |
| **Benchmark** | Evaluating existing models on new tasks | [Benchmarks section](README.md#-benchmarks--leaderboards) |
| **Analysis/Survey** | Systematic study of Indonesian NLP landscape | [Research Papers section](README.md#-research-papers) |

### Research Gaps (Opportunities)

These are real open problems where you can make an impact:

- **Legal NLP** — No Indonesian legal corpus or benchmark
- **Medical/Clinical NLP** — No public clinical notes dataset
- **Code-switching** — Bahasa mixed with English/Javanese (common but unstudied)
- **Dialect variation** — Jaksel, Gaul, regional dialects not in datasets
- **Speech synthesis (TTS)** — Limited Indonesian TTS resources
- **Long-document understanding** — Contract/paper QA not studied
- **Multimodal NLP** — Indonesian image captioning/visual QA
- **Safety & alignment** — Indonesian RLHF data is sparse

### Quick Start Process

```python
# 1. Define your research question
question = "Does IndoBERT struggle with code-switched text?"

# 2. Design an experiment
# Load Indonesian + English code-switched examples

# 3. Run your baseline
from transformers import pipeline
classifier = pipeline("text-classification", model="indobenchmark/indobert-base-p1")

# 4. Compare to alternatives (IndoBERTweet, mBERT, XLM-RoBERTa)

# 5. Document findings in a paper
# Submit to: ACL, EMNLP, EACL, or INLP workshop
```

### Conferences & Venues

- **ACL** — Main NLP conference
- **EMNLP** — Top-tier NLP venue
- **EACL** — European NLP (but welcomes global submissions)
- **INLP Workshop** — Specifically for Indonesian NLP research
- **SEACrowd** — Southeast Asian focus

### Steps to Publication

1. [ ] Define a novel contribution (dataset, model, or analysis)
2. [ ] Check if it exists already (search NusaCrowd, IndoNLP, SEACrowd)
3. [ ] Build and document your contribution
4. [ ] Compare to baselines fairly
5. [ ] Write up findings
6. [ ] Consider submitting to [NusaCrowd](https://github.com/IndoNLP/nusacrowd) or [SEACrowd](https://github.com/SEACrowd) for visibility
7. [ ] Submit to a conference

**Next steps:**
- [ ] Read [ROADMAP Path 2](ROADMAP.md#path-2-i-want-to-write-a-thesis-on-indonesian-nlp) for full guidance
- [ ] Browse [Research Gaps](README.md#-research-gaps) for ideas
- [ ] Read foundational papers to understand the landscape
- [ ] Connect with [IndoNLP community](README.md#-communities) for feedback

**See also:** [Research Papers section](README.md#-research-papers) · [ROADMAP Path 2](ROADMAP.md#path-2-i-want-to-write-a-thesis-on-indonesian-nlp)

---

## Not Sure Which Category Fits You?

Answer these questions:

1. **Do you want to build something now or do research?**
   - Build now → [1](#1-build-a-sentiment-analyzer), [2](#2-build-a-chatbot-or-qa-system), [3](#3-extract-names-and-entities), [4](#4-categorize-text-automatically), [5](#5-auto-summarize-long-documents), [6](#6-translate-indonesian-to-english-or-vice-versa), [7](#7-convert-indonesian-speech-to-text)
   - Research → [9](#9-publish-research-on-indonesian-nlp)

2. **Do you have GPU/compute resources?**
   - Yes → You can fine-tune or run large models locally
   - No → Use pre-trained models directly or HuggingFace Inference API

3. **Are you interested in a specific language?**
   - Standard Bahasa Indonesia → [1](#1-build-a-sentiment-analyzer), [2](#2-build-a-chatbot-or-qa-system), [3](#3-extract-names-and-entities), etc.
   - Regional languages → [8](#8-work-with-regional-languages)

4. **What's your timeline?**
   - This week → Use pre-trained models directly ([QUICK-START.md](QUICK-START.md))
   - This month → Fine-tune on your data
   - This semester → Build a research contribution

---

*Still not sure? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues) and let's figure it out together.*

*← Back to [README.md](README.md) · [QUICK-START.md](QUICK-START.md) · [ROADMAP.md](ROADMAP.md)*
