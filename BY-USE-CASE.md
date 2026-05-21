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

See [QUICK-START.md — Section 1](QUICK-START.md#1-sentiment-analysis) for code

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

See [QUICK-START.md — Section 5](QUICK-START.md#5-generate-text-with-an-llm) for code

**Important notes:**
- LLMs need significant GPU memory (7B model needs ~14GB, or ~4-6GB with quantization)
- For production, use HuggingFace Inference API or Ollama
- Test honestly on [IndoMMLU](https://github.com/fajri91/IndoMMLU) — most Indonesian LLMs only pass primary school level exams

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

See [QUICK-START.md — Section 6](QUICK-START.md#6-named-entity-recognition) for code

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

**See also:** [Text Summarization section](README.md#text-summarization) · [IndoNLG Benchmark](README.md#-benchmarks--leaderboards)

---

## 6. Translate Indonesian to English (or Vice Versa)

**What it does:** Machine translation between Indonesian and English or Indonesian regional languages.

**When to use:** Translating user-generated content, localizing applications, cross-lingual search, multilingual support.

### Your Setup

| Component | Choice | Why |
|-----------|--------|-----|
| **Dataset** | [NusaX-MT](https://huggingface.co/datasets/indonlp/NusaX-MT) | Indonesian + 10 regional languages |
| **Model** | [Helsinki-NLP Translation](https://huggingface.co/models?sort=trending&search=translation+indonesian) | Various translation models available |
| **Benchmark** | [IndoNLG (MT task)](https://github.com/indobenchmark/indonlg) | Evaluate quality |

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

**See also:** [Regional Languages section](README.md#regional-languages-of-indonesia) · [ROADMAP Path 4](ROADMAP.md#path-4-i-want-to-work-with-indonesian-regional-languages)

---

## 9. Publish Research on Indonesian NLP

**What it does:** Create a novel research contribution to Indonesian NLP.

**When to use:** Academic thesis, published research, conference submissions, advancing the field.

### Your Options

| Focus | Best For | Resources |
|-------|----------|----------|
| **New Dataset** | Creating a dataset for an underserved task/domain | [Research Gaps section](README.md#-research-gaps) |
| **New Model** | Fine-tuning or adapting models to Indonesian | [Models section](README.md#-pre-trained-models) |
| **Benchmark** | Evaluating existing models on new tasks | [Benchmarks section](README.md#-benchmarks--leaderboards) |
| **Analysis/Survey** | Systematic study of Indonesian NLP landscape | [Research Papers section](README.md#-research-papers) |

**See also:** [Research Papers section](README.md#-research-papers) · [ROADMAP Path 2](ROADMAP.md#path-2-i-want-to-write-a-thesis-on-indonesian-nlp)

---

*Still not sure? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues) and let's figure it out together.*

*← Back to [README.md](README.md) · [QUICK-START.md](QUICK-START.md) · [ROADMAP.md](ROADMAP.md)*