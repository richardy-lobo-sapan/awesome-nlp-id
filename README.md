# Indonesian NLP Resources 🇮🇩
### A guide that actually makes sense if you're just starting out

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
![Last Commit](https://img.shields.io/github/last-commit/richardy-lobo-sapan/awesome-nlp-id)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**By [Richardy Lobo Sapan](https://richardy-lobo-sapan.github.io)** · [GitHub](https://github.com/richardy-lobo-sapan) · [LinkedIn](https://linkedin.com/in/richardylobosapan)
*Contributor to [NusaCrowd](https://github.com/IndoNLP/nusacrowd) & [SEACrowd](https://github.com/SEACrowd)*


---

## Why this exists

When I was working on my thesis, I went looking for Indonesian NLP resources. I found lists — lots of them. Dataset names, model names, benchmark names. But I had no idea what any of it meant, where to start, or which ones actually mattered for what I was trying to do.

I was confused by the buzzwords. I didn't know the difference between a dataset and a benchmark. I didn't know why there were five different BERT models and which one to pick. I didn't know if I even needed a pre-trained model at all.

This repo is what I wish had existed back then.

It's not trying to replace [NusaCrowd](https://github.com/IndoNLP/nusacrowd) or [SEACrowd](https://github.com/SEACrowd) — those are incredible projects with hundreds of datasets built by teams of researchers (I contributed to both!). If you're a researcher who knows what you're doing, go there.

This is for everyone else. The student who just heard about NLP for the first time. The developer who wants to add Indonesian text features to their app. The person who keeps seeing "IndoBERT" and has no idea what it means.

I'm still learning too. So let's figure this out together.

---

## 🗺️ How to use this repo

**Never heard of NLP before?**
→ Start with [START-HERE.md](START-HERE.md). It explains everything from scratch before you touch any of the resources below.

**Want to get hands-on immediately?**
→ Jump to [QUICK-START.md](QUICK-START.md) — copy-paste code that runs in 5 minutes.

**Know a bit about NLP but new to Indonesian NLP?**
→ Read the [State of Indonesian NLP](#-state-of-indonesian-nlp-2025) section first, then jump to whatever task you're interested in.

**Looking for resources by what you want to build?**
→ See [BY-USE-CASE.md](BY-USE-CASE.md) — sentiment analyzer, chatbot, NER, summarization, and more.

**Coming from a specific background (student, developer, researcher)?**
→ See [BY-ROLE.md](BY-ROLE.md) for a path tailored to your starting point.

**Looking for a specific thing?**
→ Use the Table of Contents below to jump straight there.

**Want to know what to learn in what order?**
→ Check [ROADMAP.md](ROADMAP.md) for step-by-step learning paths.

**Hitting errors or something not working?**
→ Check [COMMON-PITFALLS.md](COMMON-PITFALLS.md) — most common problems are covered there.

---

## 🆕 Recently Added

| Date | Resource | Category |
|------|----------|----------|
| 2025-05 | IndoSafety | Benchmarks — Safety & Culture |
| 2025-05 | LoraxBench | Benchmarks — Regional Languages |
| 2025-05 | NusaAksara | Datasets — Regional Languages |
| 2025-05 | Kancil LLM | Models — Generative LLMs |
| 2025-05 | Cendol, Komodo | Models — Generative LLMs |
| 2025-05 | NusaCrowd (137 datasets) | Datasets — Unified Hub |

---

## 🌏 State of Indonesian NLP (2025)

*Here's a plain-English picture of where things are right now — the stuff nobody explains to you when you're starting out.*

**The good news:** Indonesian NLP has grown a lot in the last few years. There are decent datasets for common tasks like sentiment analysis, text classification, and named entity recognition in standard Bahasa Indonesia. There are pre-trained models you can use right away without building anything from scratch.

**The honest news:** Indonesian is still considered a "low-resource" language in NLP terms. That means compared to English — which has decades of labeled data, research, and tools — Indonesian is still catching up. A lot of what works great in English will work less well in Indonesian, and you'll hit walls that don't exist in English NLP.

**What's actively being worked on right now:** Adapting large language models (LLMs) like Llama and Mistral to work in Indonesian, covering Indonesia's 700+ local languages (most of which have almost no NLP resources at all), and figuring out how to make Indonesian AI culturally safe and appropriate.

**What's still wide open:** Legal NLP, medical NLP, code-switching (when people mix Bahasa with English or Javanese in the same sentence — super common on social media), and high-quality speech synthesis beyond standard Indonesian accents.

---

## 📚 Table of Contents

1. [🌟 Start Here — The Essential 7](#-start-here--the-essential-7)
2. [📂 Datasets](#-datasets)
   - [Text Classification](#text-classification)
   - [Sentiment Analysis](#sentiment-analysis)
   - [Named Entity Recognition](#named-entity-recognition)
   - [Question Answering](#question-answering)
   - [Text Summarization](#text-summarization)
   - [Machine Translation](#machine-translation)
   - [Natural Language Inference](#natural-language-inference)
   - [Hate Speech & Abusive Language](#hate-speech--abusive-language)
   - [Speech & ASR](#speech--asr)
   - [Regional Languages of Indonesia](#regional-languages-of-indonesia)
   - [Lexical Resources](#lexical-resources)
3. [🤖 Pre-trained Models](#-pre-trained-models)
4. [🏆 Benchmarks & Leaderboards](#-benchmarks--leaderboards)
5. [🛠️ Libraries & Tools](#️-libraries--tools)
6. [📝 Research Papers](#-research-papers)
7. [🎓 Tutorials & Learning Resources](#-tutorials--learning-resources)
8. [🌐 Communities](#-communities)
9. [🔬 Research Gaps](#-research-gaps)
10. [🤝 Contributing](#-contributing)
11. [🙏 Acknowledgements](#-acknowledgements)

---

## 🌟 Start Here — The Essential 7

*Overwhelmed by the full list? Start with just these. These are the 7 resources I'd tell a friend about if they had 10 minutes.*

> 💡 Not sure what some of these words mean? Check [START-HERE.md](START-HERE.md) first — it explains datasets, models, benchmarks and more in plain language.

| # | Resource | What it is in plain English | Link |
|---|----------|-----------------------------|------|
| 1 | **IndoBERT** | The most widely used pre-trained model for Indonesian. Think of it as the foundation most projects build on. | [HuggingFace](https://huggingface.co/indobenchmark/indobert-base-p1) |
| 2 | **IndoNLU** | The standard "report card" benchmark for Indonesian NLP models. 12 tasks, public leaderboard. | [GitHub](https://github.com/indobenchmark/indonlu) |
| 3 | **NusaCrowd** | 137 Indonesian datasets in one place with standardized loaders. The biggest collection that exists. | [GitHub](https://github.com/IndoNLP/nusacrowd) |
| 4 | **SmSA** | The cleanest Indonesian sentiment analysis dataset. Great first dataset to work with. | [HuggingFace](https://huggingface.co/datasets/indonlp/indonlu) |
| 5 | **Sastrawi** | The standard Indonesian stemmer (strips words to their root). Almost every Indonesian NLP pipeline uses this. | [GitHub](https://github.com/sastrawi/sastrawi) |
| 6 | **Cendol** | The most capable open Indonesian LLM right now if you want to experiment with chat/instruction tasks. | [HuggingFace](https://huggingface.co/indonlp/cendol-llama2-7b) |
| 7 | **IndoNLG** | The go-to benchmark if your task involves generating text (summarization, translation, dialogue). | [GitHub](https://github.com/indobenchmark/indonlg) |

---

## 📂 Datasets

*Datasets are collections of labeled text used to train or test NLP models. Think of them as the textbooks + answer keys that AI learns from. ([What's a dataset?](START-HERE.md#what-is-a-dataset))*

### Legend
| Badge | Meaning |
|-------|---------|
| 🟢 | Actively maintained |
| 🟡 | Unmaintained but still usable |
| 🔴 | Deprecated / broken — don't use |
| 🔓 | Open / permissive license |
| 🔒 | Restricted license |
| 📦 | Available on Hugging Face |
| 📄 | Has an associated research paper |

---

### Text Classification

*Teaching a model to put text into categories. Example: "Is this news article about politics, sports, or entertainment?"*

- **[IndoNLU](https://github.com/indobenchmark/indonlu)** `🟢` `🔓 MIT` `📦` `📄`
  12 different Indonesian NLP datasets in one package — covering emotion detection, sentiment, NER, POS tagging, and more. The standard starting point that most Indonesian NLP papers use as their baseline. If you're not sure where to start for classification, start here.
  Size: varies per task | Updated: 2024

- **[ID Clickbait](https://huggingface.co/datasets/id_clickbait)** `🟡` `🔓` `📦`
  Indonesian news headlines labeled as clickbait or not. Useful if you're building anything around news or content filtering.

- **[Indonesian Emotion Twitter](https://github.com/meisaputri21/Indonesian-Twitter-Emotion-Dataset)** `🟡` `🔓` `📄`
  Around 4,000 Indonesian tweets labeled across 5 emotions: anger, fear, happy, love, sadness. Good for social media–related projects.
  Size: ~4k tweets

---

### Sentiment Analysis

*Figuring out if text is positive, negative, or neutral. One of the most practical and well-studied NLP tasks — and Indonesian has decent resources for it.*

- **[SmSA](https://github.com/indobenchmark/indonlu)** `🟢` `🔓 MIT` `📦` `📄`
  My personal recommendation as your first Indonesian sentiment dataset. It's clean, well-labeled, comes from product reviews and comments, and has standardized train/validation/test splits ready to go. Part of IndoNLU.
  Size: ~3k samples | Labels: positive, neutral, negative

- **[InSet Lexicon](https://github.com/fajri91/InSet)** `🟡` `🔓` `📄`
  A dictionary of Indonesian words with positive/negative scores attached. Useful if you want to do rule-based sentiment without a machine learning model.

- **[SentiStrengthID](https://github.com/agusmakmun/SentiStrengthID)** `🟡` `🔓`
  Sentiment word list with strength scores, adapted for Indonesian social media text. Good complement to InSet.

- **[Indonesian Twitter Sentiment](https://www.researchgate.net/publication/338409000)** `🟡` `🔒`
  Twitter-based labeled sentiment dataset. Requires requesting access via ResearchGate — not immediately available but worth knowing about.

- **[NusaX Sentiment](https://github.com/IndoNLP/nusax)** `🟢` `🔓 CC-BY-SA` `📦` `📄`
  Sentiment dataset covering Indonesian + 10 local languages (Javanese, Sundanese, Balinese, and more). If your project needs to handle regional languages or you want to do cross-lingual work, this is the one. Won Outstanding Paper at EACL 2023.
  Size: ~5k per language | Languages: 12

---

### Named Entity Recognition

*Teaching a model to find and label names of people, places, and organizations in text. Example: "Jokowi berbicara di Jakarta" → [PERSON] berbicara di [LOCATION]*

- **[NER-Grit](https://github.com/grit-id/nergrit-corpus)** `🟡` `🔓`
  NER corpus from Indonesian news covering person, organization, and location entities. The most commonly used Indonesian NER dataset.
  Size: ~11k sentences

- **[Product NER (ProNER)](https://github.com/dziem/proner-labeled-text)** `🟡` `🔓`
  NER dataset focused on product names — useful if you're building something e-commerce related (very relevant for Indonesian market).

---

### Question Answering

*Given a passage of text, can the model answer questions about it? Example: given a Wikipedia article, answer "Siapa yang mendirikan Gojek?"*

- **[TyDiQA](https://github.com/google-research-datasets/tydiqa)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  Google's multilingual QA benchmark. Indonesian is one of 11 languages included. This is the gold standard for Indonesian QA — if you're doing QA research, this is where you compare yourself.

- **[IndoQA](https://huggingface.co/datasets/indonlp/IndoQA)** `🟢` `🔓` `📦` `📄`
  Monolingual Indonesian QA dataset built specifically for extractive and retrieval-based QA tasks.

---

### Text Summarization

*Compressing a long article into a short summary. Very practical — think auto-summarizing Kompas or Tempo articles.*

- **[IndoSum](https://github.com/kata-ai/indosum)** `🟡` `🔓` `📄`
  Indonesian news summarization dataset by Kata.ai (one of Indonesia's leading NLP companies). Good quality, well-documented.
  Size: ~20k article-summary pairs

- **[Liputan6](https://huggingface.co/datasets/id_liputan6)** `🟡` `🔓` `📦`
  Large-scale summarization dataset scraped from Liputan6. Big enough to train a model from scratch on if you need to. Works for both extractive and abstractive approaches.
  Size: ~215k pairs

---

### Machine Translation

*Translating between languages. In Indonesian NLP this includes translating between Bahasa Indonesia and English, but also between Indonesian and local languages like Javanese or Sundanese.*

- **[NusaX-MT](https://huggingface.co/datasets/indonlp/NusaX-MT)** `🟢` `🔓 CC-BY-SA` `📦` `📄`
  Parallel translation corpus across Indonesian + 10 local languages. Human-translated by native speakers — meaning the quality is high, not machine-generated noise. Best resource if you need cross-lingual or regional MT.
  Size: ~5k sentences per language pair | Languages: 12

- **[ALT (Asian Language Treebank)](https://huggingface.co/datasets/alt)** `🟢` `🔓` `📦`
  Parallel corpus across multiple Asian languages including Indonesian. Good for multilingual translation experiments.

- **[OPUS-100](https://huggingface.co/datasets/opus100)** `🟢` `🔓` `📦`
  Large multilingual parallel corpus with Indonesian included. Good for pretraining translation models.

- **[CC-Aligned](http://www.statmt.org/cc-aligned/)** `🟡` `🔓`
  Web-crawled parallel corpus with Indonesian pairs. Very large but noisy — good for pretraining, not for fine-tuning.

- **[PANL-BPPT](https://huggingface.co/datasets/id_panl_bppt)** `🟡` `🔓` `📦`
  Indonesian-English parallel corpus from the Technology Assessment Agency of Indonesia (BPPT).

---

### Natural Language Inference

*Given two sentences, does one logically follow from the other? Sounds abstract but it's a core test of how well a model "understands" language.*

- **[IndoNLI](https://github.com/ir-nlp-csui/indonli)** `🟢` `🔓` `📦` `📄`
  The first publicly available human-annotated NLI dataset for Indonesian. Built by researchers at UI (Universitas Indonesia). Premises come from Indonesian Wikipedia — annotators then wrote hypotheses and had multiple native speakers validate them.
  Size: ~18k pairs

---

### Hate Speech & Abusive Language

*Detecting offensive, hateful, or abusive content in Indonesian text. Practically important for content moderation on Indonesian social media platforms.*

- **[ID Multi-Label Hate Speech](https://github.com/okkyibrohim/id-multi-label-hate-speech-and-abusive-language-detection)** `🟡` `🔓` `📄`
  Multi-label dataset from Indonesian Twitter covering different types of hate speech and abusive language. Also includes the Kamusalay — a useful informal/slang word dictionary as a bonus.

---

### Speech & ASR

*Converting spoken Indonesian audio to text. ASR = Automatic Speech Recognition.*

- **[Common Voice (Indonesian)](https://huggingface.co/datasets/mozilla-foundation/common_voice_13_0)** `🟢` `🔓 CC-0` `📦`
  Mozilla's crowdsourced speech dataset. Indonesian subset is available. Community-contributed, so quality varies but it's free and accessible.

- **[LibriVox Indonesia](https://huggingface.co/datasets/indonesian-nlp/librivox-indonesia)** `🟢` `🔓` `📦`
  Indonesian audiobook recordings. Clean, read speech — better quality than crowdsourced data for training ASR models.
  Updated: 2023

- **[CoVoST2 (Indonesian)](https://huggingface.co/datasets/covost2)** `🟢` `🔓` `📦`
  Speech-to-text translation dataset. Indonesian → English direction available. Useful if you're building speech translation, not just transcription.

---

### Regional Languages of Indonesia

*Indonesia has 700+ local languages. This section covers NLP resources for those underrepresented languages — Javanese, Sundanese, Balinese, and many more.*

> 🗺️ Most Indonesian NLP focuses on standard Bahasa Indonesia. These resources are rarer and more valuable because of it.

- **[NusaCrowd](https://github.com/IndoNLP/nusacrowd)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  The most important single resource for regional Indonesian NLP. 137 datasets with standardized data loaders — covers Indonesian and many local languages. Also has the first multilingual ASR benchmark for Indonesian local languages. Published at ACL 2023.
  *Tip: use the [NusaCrowd Data Hub](https://huggingface.co/indonlp) to browse and load datasets with just a few lines of code.*

- **[NusaX](https://github.com/IndoNLP/nusax)** `🟢` `🔓 CC-BY-SA` `📦` `📄`
  Parallel sentiment + MT dataset for 10 local languages: Acehnese, Balinese, Banjarese, Buginese, Madurese, Minangkabau, Javanese, Ngaju, Sundanese, Toba Batak. Won Outstanding Paper at EACL 2023 — the community recognized how important this kind of resource is.

- **[NusaWrites](https://github.com/IndoNLP/nusa-writes)** `🟢` `🔓` `📦` `📄`
  High-quality text in 12 underrepresented Indonesian local languages, written by native speakers (not scraped or machine-translated). Better lexical diversity and cultural authenticity than most regional datasets.

- **[NusaAksara](https://huggingface.co/datasets/NusaAksara/NusaAksara)** `🟢` `🔓` `📦` `📄`
  A unique one — covers 8 Indonesian indigenous scripts (aksara) like Javanese script, Balinese script, and others. Includes transcription, transliteration, and translation tasks. 2025.

- **[SEACrowd](https://github.com/SEACrowd/seacrowd-datahub)** `🟢` `🔓` `📦` `📄`
  Expanded from NusaCrowd to cover all of Southeast Asia. If you need Indonesian datasets filtered specifically, use the [SEACrowd Catalogue](https://seacrowd.github.io/seacrowd-catalogue/) and filter by language `id`. Nearly 1,000 SEA languages covered.

---

### Lexical Resources

*Word lists, dictionaries, and other linguistic resources. Less glamorous than models but often essential for preprocessing Indonesian text — especially informal/social media text.*

- **[Sastrawi Root Words](https://github.com/sastrawi/sastrawi)** `🟢` `🔓 MIT`
  The standard Indonesian root word dictionary. Used by almost every Indonesian NLP preprocessing pipeline. If you're processing Indonesian text, you'll likely use this.

- **[Combined Stop Words](https://github.com/louisowen6/NLP_bahasa_resources/blob/master/combined_stop_words.txt)** `🟢` `🔓`
  Merged stop word list from multiple sources. Ready to use — just download and plug in.

- **[Combined Slang Words](https://github.com/louisowen6/NLP_bahasa_resources/blob/master/combined_slang_words.txt)** `🟢` `🔓`
  Merged slang/informal word dictionary. Essential if you're working with social media text — formal Bahasa Indonesia dictionaries won't recognize "gw", "lu", "gabisa", "yaudah" etc.

- **[Kamusalay (Informal Words)](https://github.com/okkyibrohim/id-multi-label-hate-speech-and-abusive-language-detection/blob/master/new_kamusalay.csv)** `🟡` `🔓`
  Informal-to-formal word mapping. Useful for normalizing social media text before processing.

- **[InSet Sentiment Lexicon](https://github.com/fajri91/InSet)** `🟡` `🔓` `📄`
  Word-level positive/negative polarity scores for Indonesian words.

- **[Tesaurus (Synonym Dictionary)](https://github.com/victoriasovereigne/tesaurus)** `🟡` `🔓`
  Indonesian thesaurus / synonym dictionary.

- **[Emoticon Dictionary](https://github.com/ramaprakoso/analisis-sentimen/blob/master/kamus/emoticon.txt)** `🟡` `🔓`
  Emoticon-to-meaning mapping for Indonesian social media text.

- **[Acronym Dictionary](https://github.com/ramaprakoso/analisis-sentimen/blob/master/kamus/acronym.txt)** `🟡` `🔓`
  Common Indonesian acronyms and their expansions. Useful for preprocessing formal Indonesian text.

---

## 🤖 Pre-trained Models

*Pre-trained models are AI models that someone has already trained on large amounts of text, and made publicly available for you to use. You don't need to train from scratch — you just fine-tune them on your specific task. ([What's a pre-trained model?](START-HERE.md#what-is-a-pre-trained-model))*

### Quick Comparison — Which Model Should I Use?

| Model | Size | Type | Best For | License | HF Link |
|-------|------|------|----------|---------|---------|
| **IndoBERT** | 110M | Encoder | Classification, NER, QA | MIT | [🔗](https://huggingface.co/indobenchmark/indobert-base-p1) |
| **IndoBERTweet** | 110M | Encoder | Twitter, social media text | MIT | [🔗](https://huggingface.co/indolem/indobertweet-base-uncased) |
| **IndoBART** | 140M | Seq2Seq | Summarization, translation | MIT | [🔗](https://huggingface.co/indobenchmark/indobart) |
| **IndoGPT** | 117M | Decoder | Text generation | MIT | [🔗](https://huggingface.co/indobenchmark/indogpt) |
| **Merak 7B** | 7B | LLM | Chat, instruction following | Apache 2.0 | [🔗](https://huggingface.co/Ichsan2895/Merak-7B-v4) |
| **Cendol** | 7B–13B | LLM | Instruction following, multilingual | Apache 2.0 | [🔗](https://huggingface.co/indonlp/cendol-llama2-7b) |
| **Komodo 7B** | 7B | LLM | Indonesian + regional languages | Apache 2.0 | [🔗](https://huggingface.co/Yellow-AI-NLP/komodo-7b-base) |
| **Kancil** | 8B | LLM | QA (prototype) | Apache 2.0 | [🔗](https://huggingface.co/afrizalha/Kancil-V0-llama3) |
| **SeaLLM** | 7B | LLM | SEA multilingual | Apache 2.0 | [🔗](https://huggingface.co/SeaLLMs/SeaLLM-7B-v2) |
| **mBERT** | 110M | Encoder | Cross-lingual transfer | Apache 2.0 | [🔗](https://huggingface.co/bert-base-multilingual-uncased) |
| **XLM-RoBERTa** | 125M+ | Encoder | Cross-lingual, strong baseline | MIT | [🔗](https://huggingface.co/xlm-roberta-base) |

> 💡 **Not sure which to pick?** If you're doing classification, NER, or QA → start with **IndoBERT**. If you want a chatbot or instruction-following → try **Cendol**. If your text is from Twitter → use **IndoBERTweet**.

---

### Encoder Models (BERT-based)

*Good at understanding and classifying text. Not for generating text.*

- **[IndoBERT](https://huggingface.co/indobenchmark/indobert-base-p1)** `🟢` `🔓 MIT` `📦` `📄`
  The standard Indonesian BERT. Trained on Indo4B — around 4 billion words from Indonesian news, Wikipedia, social media, and web. Two variants available: base (110M) and large (335M). Start here for most classification tasks.

- **[IndoBERTweet](https://huggingface.co/indolem/indobertweet-base-uncased)** `🟢` `🔓 MIT` `📦` `📄`
  IndoBERT's cousin trained specifically on Indonesian Twitter data. If your text is from social media (informal, slang, hashtags), this will likely outperform regular IndoBERT.

- **[Cahya's Indonesian Model Collection](https://huggingface.co/cahya)** `🟢` `🔓` `📦`
  A collection of BERT, RoBERTa, and GPT-2 models pre-trained on Indonesian by Cahya Wirawan. Multiple options, actively updated as of March 2025. Worth exploring as an alternative to IndoBERT.

- **[mBERT](https://huggingface.co/bert-base-multilingual-uncased)** `🟢` `🔓 Apache 2.0` `📦`
  Google's multilingual BERT trained on 104 languages including Indonesian. Not as strong as IndoBERT for Indonesian-only tasks, but useful when you need cross-lingual transfer.

- **[XLM-RoBERTa](https://huggingface.co/xlm-roberta-base)** `🟢` `🔓 MIT` `📦` `📄`
  Strong multilingual encoder. Sometimes outperforms IndoBERT on low-resource tasks. Worth trying as an alternative baseline.

---

### Generative LLMs

*Large language models that can generate text, follow instructions, answer questions. These are the "ChatGPT for Indonesian" equivalents.*

- **[Merak 7B](https://huggingface.co/Ichsan2895/Merak-7B-v4)** `🟢` `🔓 Apache 2.0` `📦`
  One of the first open Indonesian LLMs. Fine-tuned from LLaMA-2 for Indonesian instruction following. Good starting point for experimentation.

- **[Cendol](https://huggingface.co/indonlp/cendol-llama2-7b)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  Currently one of the most capable open Indonesian LLMs. Fine-tuned from LLaMA-2, covers both Bahasa Indonesia and regional languages. Published at ACL 2024.

- **[Komodo 7B](https://huggingface.co/Yellow-AI-NLP/komodo-7b-base)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  LLaMA-2 fine-tuned with a focus on Indonesian regional languages — unique compared to other Indonesian LLMs. By Louis Owen et al. 2024.

- **[Kancil V0](https://huggingface.co/afrizalha/Kancil-V0-llama3)** `🟡` `🔓 Apache 2.0` `📦`
  Llama-3 8B fine-tuned on synthetic Indonesian data. Prototype only — supports basic QA but not multi-turn conversation yet.

- **[SeaLLM](https://huggingface.co/SeaLLMs/SeaLLM-7B-v2)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  Southeast Asia–focused LLM with strong Indonesian support. Worth trying if you need multilingual SEA coverage.

- **[SEA-LION](https://huggingface.co/aisingapore/sea-lion-7b)** `🟢` `🔓 MIT` `📦` `📄`
  AI Singapore's Southeast Asian LLM. Indonesian is a primary language. Another solid option for multilingual SEA tasks.

---

### Seq2Seq Models

*Sequence-to-sequence models — good at tasks where you transform one piece of text into another, like summarization or translation.*

- **[IndoBART](https://huggingface.co/indobenchmark/indobart)** `🟢` `🔓 MIT` `📦` `📄`
  BART-based model for Indonesian generation tasks. The go-to model for summarization, machine translation, and paraphrase generation in Indonesian.

- **[IndoGPT](https://huggingface.co/indobenchmark/indogpt)** `🟢` `🔓 MIT` `📦` `📄`
  GPT-2 style autoregressive model for Indonesian text generation. Smaller and less capable than modern LLMs but lighter and easier to run.

---

## 🏆 Benchmarks & Leaderboards

*Benchmarks are standardized tests that measure how good a model is. Like a national exam — everyone sits the same test so you can fairly compare results. ([What's a benchmark?](START-HERE.md#what-is-a-benchmark))*

### Natural Language Understanding (NLU)

- **[IndoNLU](https://www.indobenchmark.com)** `🟢` `📄`
  The main Indonesian NLU benchmark. 12 tasks. Public leaderboard where you can see how different models compare. If you build something and want to evaluate it properly, this is the standard.

- **[IndoNLI](https://github.com/ir-nlp-csui/indonli)** `🟢` `📄`
  Indonesian Natural Language Inference benchmark. Tests whether a model truly "understands" the logical relationship between sentences.

- **[IndoMMLU](https://github.com/fajri91/IndoMMLU)** `🟢` `📄`
  Tests LLMs on Indonesian school and university exam questions across multiple subjects. Famous for revealing that most LLMs only pass Indonesian primary school level exams. EMNLP 2023.

### Natural Language Generation (NLG)

- **[IndoNLG](https://github.com/indobenchmark/indonlg)** `🟢` `📄`
  The standard benchmark for Indonesian text generation tasks: summarization, machine translation, and dialogue. Comes with IndoBART and IndoGPT as baseline models. EMNLP 2021.

### Regional Languages

- **[NusaNLU](https://github.com/IndoNLP/nusacrowd)** `🟢` `📄`
  First zero-shot NLU benchmark for Indonesian and regional languages. 26 datasets across 12 languages. Part of NusaCrowd.

- **[NusaX](https://github.com/IndoNLP/nusax)** `🟢` `📄`
  Multilingual sentiment + MT benchmark across 10 Indonesian local languages. Outstanding Paper EACL 2023.

- **[LoraxBench](https://arxiv.org/abs/2508.12459)** `🟢` `📄`
  The most comprehensive regional benchmark as of 2025 — covers 20 Indonesian languages across multiple tasks.

### Safety & Culture

- **[IndoSafety](https://arxiv.org/abs/2506.02573)** `🟢` `📄`
  Tests whether Indonesian LLMs produce culturally safe and appropriate responses. Covers informal registers, regional languages, and culturally specific norms. 2025 — a relatively new but important area.

- **[IndoCulture](https://huggingface.co/datasets/indonlp/IndoCulture)** `🟢` `📦` `📄`
  Tests cultural commonsense reasoning across 11 Indonesian provinces. Interesting because it checks if a model understands Indonesian cultural context, not just language. TACL 2024.

- **[COPAL-ID](https://github.com/haryoa/COPAL)** `🟢` `📄`
  Indonesian commonsense reasoning benchmark with cultural context. 2024.

---

## 🛠️ Libraries & Tools

*Software packages that help you build Indonesian NLP applications. These are the tools, not the datasets or models.*

### Preprocessing & Stemming

- **[PySastrawi](https://github.com/har07/PySastrawi)** `🟢` `🔓 MIT`
  Python port of Sastrawi — strips Indonesian words to their root form. Example: "memakan" → "makan", "berlari" → "lari". Almost every Indonesian NLP pipeline uses this.

- **[NLP-ID](https://github.com/kumparan/nlp-id)** `🟡` `🔓`
  Indonesian NLP toolkit by Kumparan (Indonesian news platform). Covers tokenization, stopwords, basic preprocessing.

### Full NLP Frameworks

- **[spaCy (Indonesian pipeline)](https://spacy.io/models/id)** `🟢` `🔓 MIT`
  spaCy now has an Indonesian model. Good choice if you want a production-ready NLP pipeline.
  Getting started: [Tutorial in Bahasa Indonesia](https://bagas.me/spacy-bahasa-indonesia.html)

- **[Flair](https://github.com/flairNLP/flair)** `🟢` `🔓 MIT`
  Multilingual NLP framework with Indonesian support. Particularly good for NER and sequence labeling.

### Linguistic Analysis

- **[Pujangga](https://github.com/panggi/pujangga)** `🟡` `🔓`
  Indonesian NLP REST API — covers tokenization, NER, POS tagging, morphological analysis. Useful if you want NLP features without running models yourself.

- **[INDRA](https://github.com/davidmoeljadi/INDRA)** `🟡` `🔓`
  Indonesian Resource Grammar for deep linguistic analysis. More research-oriented than production use.

- **[MorphInd](http://septinalarasati.com/morphind/)** `🟡` `🔒`
  Indonesian Morphological Analyzer. Research tool — contact authors for access.

### Data Collection

> ⚠️ Twitter/X scraping tools have changed a lot since 2022 due to API restrictions. Be careful about which tools you use.

- **[Tweepy](https://docs.tweepy.org)** `🟢` `🔓 MIT`
  Official Python wrapper for the Twitter/X API. Requires a developer account. The current recommended way to collect Indonesian Twitter data.

- **[snscrape](https://github.com/JustAnotherArchivist/snscrape)** `🟡` `🔓`
  Social network scraper. Functionality varies with platform API changes — check if it still works before relying on it.

- **[GetOldTweets3](https://github.com/Mottl/GetOldTweets3)** `🔴 DEPRECATED`
  Broken since Twitter's API changes. Do not use — it won't work.

---

## 📝 Research Papers

*The academic papers behind the datasets, models, and benchmarks. Reading these isn't required to use the resources, but they explain the "why" behind design decisions.*

> 💡 Most papers are free to read. If you hit a paywall, try searching the title on [arXiv](https://arxiv.org) — most NLP papers have a free preprint.

### Foundational — Start Here

These are the papers that defined Indonesian NLP as a field. If you're going to read any papers, read these:

- **[IndoBERT / IndoNLU (2020)](https://arxiv.org/abs/2009.05387)** — Wilie et al. The paper that defined the Indonesian NLU benchmark and introduced IndoBERT. This is the foundation everything else builds on.
- **[IndoNLG (2021)](https://arxiv.org/abs/2104.08200)** — Cahyawijaya et al. Indonesian NLG benchmark + IndoBART/IndoGPT. Read this if your task involves generating text.
- **[IndoNLI (2021)](https://arxiv.org/abs/2110.00501)** — Mahendra et al. First human-annotated Indonesian NLI dataset.

### LLMs for Indonesian

- **[Cendol (2024)](https://arxiv.org/abs/2404.06138)** — Open instruction-tuned LLMs for Indonesian languages.
- **[Komodo (2024)](https://arxiv.org/abs/2403.09298)** — LLM focused on Indonesian regional languages.
- **[IndoMMLU (2023)](https://arxiv.org/abs/2310.04928)** — "LLMs only pass primary school exams in Indonesia." A sobering and important paper.
- **[IndoSafety (2025)](https://arxiv.org/abs/2506.02573)** — Safety evaluation for Indonesian LLMs.

### Low-resource & Regional Languages

- **[NusaCrowd (2023)](https://aclanthology.org/2023.findings-acl.868)** — 137 Indonesian NLP datasets unified. ACL 2023 Findings.
- **[NusaX (2023)](https://aclanthology.org/2023.eacl-main.57)** — Multilingual sentiment for 10 Indonesian local languages. Outstanding Paper EACL 2023.
- **[NusaWrites (2023)](https://arxiv.org/abs/2309.12674)** — High-quality corpora for underrepresented Indonesian languages.
- **[NusaAksara (2025)](https://arxiv.org/abs/2502.18148)** — Indonesian indigenous scripts benchmark.
- **[LoraxBench (2025)](https://arxiv.org/abs/2508.12459)** — Multitask benchmark for 20 Indonesian languages.
- **[SEACrowd (2024)](https://arxiv.org/abs/2406.10118)** — Southeast Asian NLP resource hub. EMNLP 2024.

### Sentiment Analysis

- **[InSet Lexicon (2017)](https://www.researchgate.net/publication/321757985)** — Indonesian sentiment lexicon. Foundational for lexicon-based sentiment approaches.
- **[NusaX Sentiment (2023)](https://aclanthology.org/2023.eacl-main.57)** — Cross-lingual sentiment across 10 Indonesian local languages.

---

## 🎓 Tutorials & Learning Resources

### Notebooks & Colabs

- **[IndoBERT Fine-tuning Starter](https://colab.research.google.com/drive/1yFphU6PW9Uo6lmDly_ud9a6c4RCYlwdX)** — Generate word/sentence embeddings using pre-trained Indonesian BERT. Good first hands-on notebook.
- **[NusaCrowd Data Hub](https://huggingface.co/indonlp)** — Load any of 137 Indonesian datasets with just a few lines of Python.

### Blog Posts & Articles

- **[POS Tagging with Flair (Indonesian)](https://medium.com/@puspitakaban/pos-tagging-bahasa-indonesia-dengan-flair-nlp-c12e45542860)** — Practical tutorial in Bahasa Indonesia.
- **[spaCy Indonesian Tutorial](https://bagas.me/spacy-bahasa-indonesia.html)** — Getting started with spaCy for Indonesian.
- **[FastText Indonesian Word Embedding](https://structilmy.com/2019/08/membuat-model-word-embedding-fasttext-bahasa-indonesia/)** — Building FastText embeddings for Indonesian.
- **[Awesome Indonesian LLM Dataset (2025)](https://medium.com/@irfanfadhullah/awesome-indonesian-llm-dataset-a-game-changer-for-indonesian-ai-13433d33a1b5)** — Overview of the Indonesian NLP Hugging Face ecosystem.

### Unified Resource Hubs

These are the "go deeper" destinations once you've outgrown this list:

- **[indonesian-nlp on Hugging Face](https://huggingface.co/indonesian-nlp)** `🟢` — Centralized HF org with standardized Indonesian datasets, models, and documentation.
- **[IndoNLP GitHub Org](https://github.com/IndoNLP)** `🟢` — Research org behind NusaCrowd, NusaX, IndoNLG, IndoNLU. Most active Indonesian NLP research group.
- **[SEACrowd Catalogue](https://seacrowd.github.io/seacrowd-catalogue/)** `🟢` — Browse and filter nearly 1,000 SEA language datasets. Filter by `id` for Indonesian.

---

## 🌐 Communities

- **[IndoNLP](https://indonlp.github.io)** — Academic community behind most major Indonesian NLP benchmarks.
- **[SEACrowd Discord](https://github.com/SEACrowd)** — Active community working on SEA NLP including Indonesian. Good place to find collaborators.
- **[Hugging Face Indonesian NLP Org](https://huggingface.co/indonesian-nlp)** — Open collaboration hub on HF.

> Know of an active Indonesian NLP Telegram group, forum, or Discord? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues) to add it!

---

## 🔬 Research Gaps

*These are areas where Indonesian NLP resources are still significantly lacking. If you're looking for a thesis topic or research direction, these are real open problems.*

- **Legal NLP** — No large-scale Indonesian legal corpus or benchmark. Huge practical demand from law firms, government, and compliance.
- **Medical / Clinical NLP** — No public Indonesian clinical notes or medical QA dataset. Critical for healthcare AI in Indonesia.
- **Code-switching** — Bahasa Indonesia mixed with English/Javanese/Sundanese is extremely common on social media but almost completely absent from datasets.
- **Dialect variation** — Almost all datasets use formal Bahasa Indonesia. Jaksel, Gaul, regional dialects — mostly uncovered.
- **Speech synthesis (TTS)** — ASR (speech-to-text) has decent resources; TTS (text-to-speech) for Indonesian, especially regional accents, is still limited.
- **Long-form document understanding** — No Indonesian equivalent of contract understanding, scientific paper QA, or legal document analysis benchmarks.
- **Multimodal NLP** — Indonesian image captioning and visual QA datasets essentially don't exist.
- **Safety & alignment data** — IndoSafety (2025) is a start, but RLHF preference data in Indonesian is nearly absent.

---

## 🤝 Contributing

Contributions are very welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting.

**Quick checklist for new resources:**
- [ ] Resource is publicly accessible
- [ ] Includes a real description (not just a URL)
- [ ] License is noted
- [ ] Status badge is accurate
- [ ] CHANGELOG.md entry added

[Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new/choose) · [Submit a PR](https://github.com/richardy-lobo-sapan/awesome-nlp-id/pulls)

---

## 🙏 Acknowledgements

This repo stands on the shoulders of a lot of people's hard work:

- **[louisowen6/NLP_bahasa_resources](https://github.com/louisowen6/NLP_bahasa_resources)** by Louis Owen — the original Indonesian NLP resource list that inspired this repo
- **[NusaCrowd](https://github.com/IndoNLP/nusacrowd)** and **[SEACrowd](https://github.com/SEACrowd)** — the research initiatives I contributed to that showed me how much the Indonesian NLP community has built
- **[indonesian-nlp/nlp-resources](https://github.com/indonesian-nlp/nlp-resources)** and **[irfnrdh/Awesome-Indonesia-NLP](https://github.com/irfnrdh/Awesome-Indonesia-NLP)** — other curated lists in this space
- The entire **IndoNLP**, **IndoLEM**, and **NusaCrowd** research communities for building these resources in the first place

---

*This list only aggregates publicly available resources. Please refer to each resource's original license before use in your projects.*

*Found something outdated or missing? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues) — I'm actively maintaining this.*
