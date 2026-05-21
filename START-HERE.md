# 🌱 Start Here — Indonesian NLP for Complete Beginners

*This guide assumes you know nothing about NLP. That's fine — everyone started there.*

---

## Table of Contents

1. [What even is NLP?](#1-what-even-is-nlp)
2. [Why Indonesian NLP specifically?](#2-why-indonesian-nlp-specifically)
3. [The jargon decoded](#3-the-jargon-decoded)
4. [How all the pieces fit together](#4-how-all-the-pieces-fit-together)
5. [Pick your starting point](#5-pick-your-starting-point)
6. [Your first 30 minutes](#6-your-first-30-minutes)

---

## 1. What even is NLP?

**Natural Language Processing (NLP)** is the part of AI that deals with human language — text and speech.

Computers are naturally great at structured data: numbers, tables, spreadsheets. But human language? Messy, ambiguous, full of slang, sarcasm, and context that changes everything. NLP is the set of techniques that help machines make sense of it.

You interact with NLP every day without realizing it:

- **Google Translate** converting "saya lapar" to "I'm hungry"
- **Gojek's customer service bot** understanding your complaint
- **Tokopedia's search** figuring out what product you actually want even when you spell it wrong
- **Your phone's autocorrect** predicting the next word
- **YouTube's auto-captions** transcribing a video in real time

All of that is NLP.

---

## 2. Why Indonesian NLP specifically?

### It matters more than you might think

Indonesia is the 4th most populous country in the world. 270+ million people. And yet, most AI systems — including the ones Indonesians use every day — are primarily built for English.

When a Tokopedia seller tries to use an AI writing tool, it often works poorly in Indonesian. When a hospital wants to analyze patient feedback in Bahasa, the tools aren't really built for it. When a researcher wants to study Indonesian social media, the datasets barely exist.

That's the gap. And it's a big one.

### Indonesian is a "low-resource" language

In NLP, **low-resource** means there isn't much labeled training data available. English has decades of carefully annotated text, millions of labeled examples, and thousands of research papers. Indonesian is catching up — but there's still a significant gap.

This has two implications:
1. Tools that work great in English will work less well in Indonesian
2. There's a real opportunity for people who work on this

### It's genuinely complex

Standard written Bahasa Indonesia (like in Kompas or Tempo) is already one thing. But Indonesian people also:

- **Code-switch**: mix Bahasa with English, Javanese, or Sundanese mid-sentence — "Gue udah makan tapi still hungry"
- **Use heavy slang**: "gw", "lu", "gabisa", "mager", "gercep" — not in any formal dictionary
- **Speak 700+ local languages**: Javanese, Sundanese, Balinese, Minangkabau — most with almost no NLP resources

So when people say "Indonesian NLP," they're often just talking about formal Bahasa Indonesia. The full linguistic reality of Indonesia is much richer and much less covered.

---

## 3. The jargon decoded

This is the section I wish someone had given me. Here's what all those terms actually mean:

---

### What is a Dataset?

A **dataset** is a collection of examples used to train or test an AI model.

Think of it like a textbook with an answer key at the back. The model studies the examples, learns patterns, and then we test it on examples it's never seen before.

For Indonesian NLP, a sentiment analysis dataset might look like this:

| Text | Label |
|------|-------|
| "Produk ini bagus banget, puas!" | Positive |
| "Kualitasnya mengecewakan, tidak sesuai deskripsi" | Negative |
| "Biasa aja sih, standar" | Neutral |

A dataset with 10,000 rows like this is what you'd use to teach a model to understand Indonesian sentiment.

---

### What is a Model?

A **model** is the AI system that learns patterns from data.

In modern NLP, models are neural networks — mathematical systems loosely inspired by the human brain. They have millions or billions of "parameters" (think of them as dials) that get adjusted during training until the model gets good at its task.

You don't usually build a model from scratch. You use a **pre-trained model** (see below).

---

### What is a Pre-trained Model?

Training a model from scratch requires enormous amounts of data and computing power — we're talking weeks on expensive GPUs.

A **pre-trained model** is a model that someone has already trained on a massive amount of text, and then made publicly available for free. You can download it and immediately start using it.

The idea: instead of teaching a model to understand Indonesian from zero, you start with a model that already "knows" Indonesian, and then teach it your specific task.

This is called **fine-tuning** — taking a pre-trained model and training it a little more on your specific dataset.

**Analogy:** Imagine hiring someone who already speaks fluent Indonesian (pre-trained). You don't teach them Indonesian from scratch — you just teach them the specific vocabulary and patterns of your job (fine-tuning).

---

### What is BERT?

**BERT** (Bidirectional Encoder Representations from Transformers) is a type of pre-trained model developed by Google in 2018.

What made it special: it reads text in both directions at the same time (left-to-right AND right-to-left), which helps it understand context much better than earlier models. "I went to the bank" means something very different depending on context — BERT handles this better.

**IndoBERT** is BERT trained specifically on Indonesian text. It's the most widely used starting point for Indonesian NLP tasks.

---

### What is an LLM?

**Large Language Model (LLM)** — think ChatGPT, Gemini, Claude. Much larger and more capable than BERT. They can generate text, answer questions, translate, summarize — all from one model.

For Indonesian, models like **Cendol**, **Komodo**, and **Merak** are LLMs fine-tuned to work in Bahasa Indonesia.

The tradeoff: LLMs are powerful but expensive to run. IndoBERT is smaller, faster, and cheaper — often enough for classification tasks.

---

### What is a Benchmark?

A **benchmark** is a standardized test for measuring how good a model is.

Like a national exam: everyone takes the same test, so you can fairly compare results. When researchers say "our model scores 85% on IndoNLU," they mean it got 85% of the benchmark's questions right.

**IndoNLU** is the main Indonesian NLP benchmark — 12 different tasks, public leaderboard. It's what most Indonesian NLP papers use to compare their models.

---

### What is Fine-tuning?

**Fine-tuning** means taking a pre-trained model and training it a little more on your specific task and dataset.

You don't change the whole model — just adapt it. This is much cheaper and faster than training from scratch, and usually gives great results.

Example flow:
1. Download IndoBERT (pre-trained on general Indonesian text)
2. Take your sentiment analysis dataset (SmSA)
3. Fine-tune IndoBERT on SmSA for a few hours
4. Now you have a model that understands Indonesian sentiment

---

### What is Tokenization?

Computers can't read words directly. Text needs to be broken into small units called **tokens** before a model can process it.

A token is usually a word or part of a word:

"Saya makan nasi goreng" → ["Saya", "makan", "nasi", "goreng"] → 4 tokens

Indonesian tokenization has some quirks — prefixes and suffixes (me-, di-, -kan, -lah) can cause interesting splits. This is part of why Indonesian-specific tools like Sastrawi exist.

---

### What is Stemming?

Indonesian words have complex morphology — the same root word can appear in many forms:

- "makan" (eat) → "memakan", "dimakan", "makanan", "mempermakankan"

**Stemming** strips words back to their root form. **Sastrawi** is the standard Indonesian stemmer — it knows Indonesian morphological rules and can strip these affixes correctly.

Why does it matter? If you're searching for documents about "makan", you probably want to find documents that say "makanan" or "memakan" too.

---

### What is NER?

**Named Entity Recognition (NER)** — identifying and labeling names of people, places, and organizations in text.

Input: "Presiden Jokowi menghadiri acara di Jakarta"
Output: "Presiden [Jokowi/PERSON] menghadiri acara di [Jakarta/LOCATION]"

Useful for: extracting structured information from unstructured text, building knowledge graphs, information retrieval.

---

### What is ASR?

**Automatic Speech Recognition (ASR)** — converting spoken audio to text. The technology behind voice-to-text, transcription services, and voice assistants.

Indonesian ASR is improving but still lags behind English, especially for regional accents and code-switched speech.

---

## 4. How all the pieces fit together

Here's the typical flow of an Indonesian NLP project:

```
Raw Text (e.g. Tokopedia reviews in Indonesian)
        ↓
  Preprocessing
  (Tokenize, stem with Sastrawi, remove stop words,
   normalize slang with Kamusalay)
        ↓
  Pre-trained Model
  (Download IndoBERT from HuggingFace)
        ↓
  Fine-tuning
  (Train on your labeled dataset, e.g. SmSA sentiment data)
        ↓
  Evaluation
  (Test on held-out data, compare to IndoNLU leaderboard)
        ↓
  Your NLP Application
  (API, web app, research paper, thesis)
```

The **dataset** is your training data. The **pre-trained model** is your starting point. **Fine-tuning** adapts it to your task. The **benchmark** tells you how good it is.

---

## 5. Pick your starting point

### "I want to analyze sentiment in Indonesian text"
→ Dataset: **[SmSA](https://github.com/indobenchmark/indonlu)** (part of IndoNLU)
→ Model: **[IndoBERT](https://huggingface.co/indobenchmark/indobert-base-p1)**
→ If your text is from Twitter: **[IndoBERTweet](https://huggingface.co/indolem/indobertweet-base-uncased)**
→ Evaluate with: **[IndoNLU benchmark](https://www.indobenchmark.com)**

### "I want to build a simple Indonesian chatbot or QA system"
→ Model: **[Cendol](https://huggingface.co/indonlp/cendol-llama2-7b)** or **[Merak 7B](https://huggingface.co/Ichsan2895/Merak-7B-v4)**
→ Dataset: **[IndoQA](https://huggingface.co/datasets/indonlp/IndoQA)** if you need QA training data
→ Warning: LLMs need significant GPU resources to run locally

### "I want to do my thesis on Indonesian NLP"
→ Read the [State of Indonesian NLP](README.md#-state-of-indonesian-nlp-2025) section
→ Check [Research Gaps](README.md#-research-gaps) for open problems
→ Foundation papers: [IndoBERT paper](https://arxiv.org/abs/2009.05387) + [IndoNLG paper](https://arxiv.org/abs/2104.08200)
→ See [ROADMAP.md](ROADMAP.md) for a structured path

### "I want to work with regional Indonesian languages (Javanese, Sundanese, etc.)"
→ Start with **[NusaCrowd](https://github.com/IndoNLP/nusacrowd)** — 137 datasets including regional languages
→ **[NusaX](https://github.com/IndoNLP/nusax)** for sentiment + MT across 10 local languages
→ Warning: regional language resources are sparse — you may need to create your own data

### "I want to do Indonesian speech recognition"
→ Dataset: **[Common Voice Indonesian](https://huggingface.co/datasets/mozilla-foundation/common_voice_13_0)** or **[LibriVox Indonesia](https://huggingface.co/datasets/indonesian-nlp/librivox-indonesia)**
→ Model: Start with **Whisper** (OpenAI's multilingual ASR model) fine-tuned on Indonesian

---

## 6. Your first 30 minutes

Here's the quickest way to get your hands dirty:

**Step 1: Browse the data (5 minutes)**

Open a Python notebook (Google Colab is free) and load an Indonesian dataset:

```python
from datasets import load_dataset

# Load the SmSA sentiment dataset
dataset = load_dataset("indonlp/indonlu", "smsa")

# Look at a few examples
for example in dataset["train"][:5]:
    print(example)
```

**Step 2: Try a pre-trained model (10 minutes)**

```python
from transformers import pipeline

# Load IndoBERT for sentiment classification
classifier = pipeline(
    "text-classification",
    model="mdhugol/indonesia-bert-sentiment-classification"
)

# Test it
result = classifier("Produk ini sangat bagus dan memuaskan!")
print(result)
# Should output: POSITIVE
```

**Step 3: Read one paper (15 minutes)**

Read the abstract and introduction of the [IndoBERT paper](https://arxiv.org/abs/2009.05387). You don't need to understand all of it — just get a feel for how researchers describe the Indonesian NLP landscape.

That's it. You've loaded a real Indonesian NLP dataset, run a real Indonesian NLP model, and read a real research paper. You're no longer starting from zero.

---

## What next?

→ Go back to the [main resource list](README.md) — it'll make much more sense now
→ Check [ROADMAP.md](ROADMAP.md) for a structured learning path
→ If you build something, [contribute it back](CONTRIBUTING.md) — the community needs more resources

---

*Questions? Open an issue — I'm learning too and happy to figure it out together.*

*← Back to [README.md](README.md)*
