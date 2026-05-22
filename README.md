# Indonesian NLP Resources 🇮🇩
### A guide that actually makes sense if you're just starting out

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
![Last Commit](https://img.shields.io/github/last-commit/richardy-lobo-sapan/awesome-nlp-id)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**By [Richardy Lobo Sapan](https://richardy-lobo-sapan.github.io)** · [GitHub](https://github.com/richardy-lobo-sapan) · [LinkedIn](https://linkedin.com/in/richardylobosapan)


---

## Why this exists

When I was working on my thesis, I went looking for Indonesian NLP resources. I found lists — lots of them. Dataset names, model names, benchmark names. But I had no idea what any of it meant, where to start, or which ones actually mattered for what I was trying to do.

I was confused by the buzzwords. I didn't know the difference between a dataset and a benchmark. I didn't know why there were five different BERT models and which one to pick. I didn't know if I even needed a pre-trained model at all.

This repo is what I wish had existed back then.

It's not trying to replace resources such as [NusaCrowd](https://github.com/IndoNLP/nusa-crowd) or [SEACrowd](https://github.com/SEACrowd) — those are incredible projects with hundreds of datasets built by teams of researchers (I contributed too). If you're a researcher who knows what you're doing, go there.

This is for everyone else. The student who just heard about NLP for the first time. The developer who wants to add Indonesian text features to their app. The person who keeps seeing "IndoBERT" and has no idea what it means.

I'm still learning too. So let's figure this out together.

---

## 🗺️ How to use this repo

**Never heard of NLP before?**
→ Start with [START-HERE.md](START-HERE.md). It explains everything from scratch before you touch any of the resources below.

**Want to get hands-on immediately?**
→ Jump to [QUICK-START.md](QUICK-START.md) — copy-paste code that runs in 5 minutes.

**Know a bit about NLP but new to Indonesian NLP?**
→ Read the [State of Indonesian NLP](#-state-of-indonesian-nlp-2026) section first, then jump to whatever task you're interested in.

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
| 2026-05 | IndoLEM | Benchmarks — NLU |
| 2026-05 | "One Country, 700+ Languages" | Research Papers — Foundational |
| 2026-05 | Indonesian Legal KG + VizKG | Datasets — Knowledge Graphs |
| 2026-05 | Sahabat-AI (GoTo) | Models — Generative LLMs |
| 2026-05 | NusaBERT | Models — Encoder |
| 2026-05 | Indonesian Whisperer | Tools — ASR |
| 2026-05 | SEA-VL | Datasets — Multimodal |
| 2026-05 | SEADialogues | Datasets — Dialogue |
| 2026-05 | IndoToD | Benchmarks — NLU |
| 2026-05 | IndoRobusta | Datasets — Code-switching |
| 2026-05 | awesome-indonesian-llm-dataset | Tutorials — Unified Hubs |
| 2026-05 | OSCAR, CC-100, CulturaX | Datasets — Web Corpora |
| 2026-05 | IndoWiki Knowledge Graph | Datasets — Knowledge Graphs |
| 2026-05 | MSVD-Indonesian | Datasets — Multimodal |
| 2026-05 | PAWS-ID, ParaNMT | Datasets — Paraphrase |
| 2026-05 | IndoCareer, IndoCloze | Benchmarks — NLU |
| 2026-05 | IndoSafety | Benchmarks — Safety & Culture |
| 2026-05 | LoraxBench | Benchmarks — Regional Languages |
| 2026-05 | NusaAksara | Datasets — Regional Languages |
| 2026-05 | Kancil LLM | Models — Generative LLMs |
| 2026-05 | Cendol, Komodo | Models — Generative LLMs |
| 2026-05 | NusaCrowd (137 datasets) | Datasets — Unified Hub |

---

## 🌏 State of Indonesian NLP (2026)

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
   - [Dialogue & Conversational](#dialogue--conversational)
   - [Code-switching](#code-switching)
   - [Legal NLP](#legal-nlp)
   - [Spelling & Text Normalization](#spelling--text-normalization)
   - [Web Corpora & Large Text Collections](#web-corpora--large-text-collections)
   - [Paraphrase & Text Similarity](#paraphrase--text-similarity)
   - [Knowledge Graphs](#knowledge-graphs)
   - [Multimodal](#multimodal)
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
| 3 | **NusaCrowd** | 137 Indonesian datasets in one place with standardized loaders. The biggest collection that exists. | [GitHub](https://github.com/IndoNLP/nusa-crowd) |
| 4 | **SmSA** | The cleanest Indonesian sentiment analysis dataset. Great first dataset to work with. | [HuggingFace](https://huggingface.co/datasets/indonlp/indonlu) |
| 5 | **Sastrawi** | The standard Indonesian stemmer (strips words to their root). Almost every Indonesian NLP pipeline uses this. | [GitHub](https://github.com/sastrawi/sastrawi) |
| 6 | **Cendol** | A strong open Indonesian LLM — good starting point for chat and instruction tasks. Lighter to run than the alternatives. | [HuggingFace](https://huggingface.co/indonlp/cendol-llama2-7b) |
| 6b | **Sahabat-AI** | GoTo's (Gojek/Tokopedia) Indonesian LLM, up to 70B — more powerful but needs significantly more compute. | [HuggingFace](https://huggingface.co/GoToCompany) |
| 7 | **IndoNLG** | The go-to benchmark if your task involves generating text (summarization, translation, dialogue). | [GitHub](https://github.com/indobenchmark/indonlg) |

---

## 📂 Datasets

*Datasets are collections of labeled text used to train or test NLP models. Think of them as the textbooks + answer keys that AI learns from. ([What's a dataset?](START-HERE.md#what-is-a-dataset))*

> 📌 **A note on completeness:** Most datasets listed here are also standardized and indexed in the [SEACrowd Catalogue](https://seacrowd.github.io/seacrowd-catalogue/) — a community effort covering 1,000+ SEA language datasets with quality-checked dataloaders. If you want the most exhaustive collection, filter the catalogue by language `id`. This list exists for a different reason: to explain what these datasets are, who they're for, and where to start. Think of SEACrowd as the full library, and this as the reading guide.

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

- **[ID Clickbait](https://huggingface.co/datasets/SEACrowd/id_clickbait)** `🟡` `🔓` `📦`
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

- **[NER-Grit](https://huggingface.co/datasets/SEACrowd/nergrit)** `🟡` `🔓`
  NER corpus from Indonesian news covering person, organization, and location entities. The most commonly used Indonesian NER dataset.
  Size: ~11k sentences

- **[Product NER (ProNER)](https://github.com/dziem/proner-labeled-text)** `🟡` `🔓`
  NER dataset focused on product names — useful if you're building something e-commerce related (very relevant for Indonesian market).

- **[IDNer News 2K](https://huggingface.co/datasets/SEACrowd/idner_news_2k)** `🟢` `🔓` `📦` `📄`
  Re-annotated Indonesian news NER dataset with standardized IOB tags. Cleaner and more consistent than NER-Grit — good alternative if you need better annotation quality.
  Size: ~2k sentences | Standardized via SEACrowd

- **[IndQNER](https://huggingface.co/datasets/SEACrowd/indqner)** `🟢` `🔓` `📦` `📄`
  NER dataset from the Indonesian translation of the Quran. Unique religious/classical domain — useful if you're building applications around Islamic text or formal historical Indonesian.
  Size: ~2k sentences

---

### Question Answering

*Given a passage of text, can the model answer questions about it? Example: given a Wikipedia article, answer "Siapa yang mendirikan Gojek?"*

- **[TyDiQA](https://github.com/google-research-datasets/tydiqa)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  Google's multilingual QA benchmark. Indonesian is one of 11 languages included. This is the gold standard for Indonesian QA — if you're doing QA research, this is where you compare yourself.

- **[IndoQA](https://huggingface.co/datasets/SEACrowd/indoqa)** `🟢` `🔓` `📦` `📄`
  Monolingual Indonesian QA dataset built specifically for extractive and retrieval-based QA tasks.

- **[StatMetaQA](https://github.com/ir-nlp-csui/StatMetaQA)** `🟡` `🔓`
  Indonesian statistical meta question answering dataset — questions about statistical facts and numerical reasoning in Indonesian. Unique domain not covered by TyDiQA or IndoQA. By ir-nlp-csui (UI NLP group).

---

### Text Summarization

*Compressing a long article into a short summary. Very practical — think auto-summarizing Kompas or Tempo articles.*

- **[IndoSum](https://github.com/kata-ai/indosum)** · [📦 SEACrowd](https://huggingface.co/datasets/SEACrowd/indosum) `🟡` `🔓` `📄`
  Indonesian news summarization dataset by Kata.ai (one of Indonesia's leading NLP companies). Good quality, well-documented.
  Size: ~20k article-summary pairs

- **[Liputan6](https://huggingface.co/datasets/SEACrowd/liputan6)** `🟡` `🔓` `📦`
  Large-scale summarization dataset scraped from Liputan6. Big enough to train a model from scratch on if you need to. Works for both extractive and abstractive approaches.
  Size: ~215k pairs

---

### Machine Translation

*Translating between languages. In Indonesian NLP this includes translating between Bahasa Indonesia and English, but also between Indonesian and local languages like Javanese or Sundanese.*

- **[NusaX-MT](https://huggingface.co/datasets/SEACrowd/nusax_mt)** `🟢` `🔓 CC-BY-SA` `📦` `📄`
  Parallel translation corpus across Indonesian + 10 local languages. Human-translated by native speakers — meaning the quality is high, not machine-generated noise. Best resource if you need cross-lingual or regional MT.
  Size: ~5k sentences per language pair | Languages: 12

- **[ALT (Asian Language Treebank)](https://huggingface.co/datasets/SEACrowd/parallel_asian_treebank)** `🟢` `🔓` `📦`
  Parallel corpus across multiple Asian languages including Indonesian. Good for multilingual translation experiments.

- **[OPUS-100](https://huggingface.co/datasets/Helsinki-NLP/opus-100)** `🟢` `🔓` `📦`
  Large multilingual parallel corpus with Indonesian included. Good for pretraining translation models.

- **[CC-Aligned](http://www.statmt.org/cc-aligned/)** `🟡` `🔓`
  Web-crawled parallel corpus with Indonesian pairs. Very large but noisy — good for pretraining, not for fine-tuning.

- **[PANL-BPPT](https://huggingface.co/datasets/SEACrowd/id_panl_bppt)** `🟡` `🔓` `📦`
  Indonesian-English parallel corpus from the Technology Assessment Agency of Indonesia (BPPT).

- **[Indo General MT](https://huggingface.co/datasets/SEACrowd/indo_general_mt_en_id)** `🟢` `🔓` `📦` `📄`
  Multi-domain English-Indonesian MT dataset with standardized train/val/test splits. Benchmarked against Google Translate across multiple domains. Good for evaluating domain generalization of translation models.

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

- **[Indonesian Whisperer](https://huggingface.co/spaces/cahya/indonesian-whisperer)** `🟢` `🔓` `📦`
  Whisper fine-tuned specifically for Indonesian ASR by Cahya Wirawan. Available as a live demo on HuggingFace Spaces — good starting point if you want to try Indonesian speech recognition without setting up a full pipeline. Updated April 2025.

- **[CoVoST2 (Indonesian)](https://github.com/facebookresearch/covost)** `🟢` `🔓` `📦`
  Speech-to-text translation dataset. Indonesian → English direction available. Useful if you're building speech translation, not just transcription.

- **[IndSpeech News LVCSR](https://huggingface.co/datasets/SEACrowd/indspeech_news_lvcsr)** `🟢` `🔓` `📦` `📄`
  The first large-vocabulary continuous speech recognition corpus for Indonesian. 40+ hours of speech from 400 speakers, developed by Telkom Indonesia's R&D division in collaboration with ATR Japan. Good for training serious ASR models.
  Size: 40+ hours | Speakers: 400

- **[ASR-INDOCSC](https://huggingface.co/datasets/SEACrowd/asr_indocsc)** `🟢` `🔓 CC-BY-NC-ND` `📦`
  4.5 hours of transcribed Indonesian conversational speech across everyday topics (sports, food, movies, family). Complements LVCSR's news domain with natural spoken dialogue.
  Size: 4.54 hours

---

### Regional Languages of Indonesia

*Indonesia has 700+ local languages. This section covers NLP resources for those underrepresented languages — Javanese, Sundanese, Balinese, and many more.*

> 🗺️ Most Indonesian NLP focuses on standard Bahasa Indonesia. These resources are rarer and more valuable because of it.

- **[NusaCrowd](https://github.com/IndoNLP/nusa-crowd)** `🟢` `🔓 Apache 2.0` `📦` `📄`
  The most important single resource for regional Indonesian NLP. 137 datasets with standardized data loaders — covers Indonesian and many local languages. Also has the first multilingual ASR benchmark for Indonesian local languages. Published at ACL 2023.
  *Tip: use the [NusaCrowd Data Hub](https://huggingface.co/indonlp) to browse and load datasets with just a few lines of code.*

- **[NusaX](https://github.com/IndoNLP/nusax)** `🟢` `🔓 CC-BY-SA` `📦` `📄`
  Parallel sentiment + MT dataset for 10 local languages: Acehnese, Balinese, Banjarese, Buginese, Madurese, Minangkabau, Javanese, Ngaju, Sundanese, Toba Batak. Won Outstanding Paper at EACL 2023 — the community recognized how important this kind of resource is.

- **[NusaWrites](https://github.com/IndoNLP/nusa-writes)** `🟢` `🔓` `📦` `📄`
  High-quality text in 12 underrepresented Indonesian local languages, written by native speakers (not scraped or machine-translated). Better lexical diversity and cultural authenticity than most regional datasets.

- **[NusaAksara](https://huggingface.co/datasets/NusaAksara/NusaAksara)** `🟢` `🔓` `📦` `📄`
  A unique one — covers 8 Indonesian indigenous scripts (aksara) like Javanese script, Balinese script, and others. Includes transcription, transliteration, and translation tasks. 2025.

- **[NgokoKrama](https://github.com/ir-nlp-csui/NgokoKrama)** `🟡` `🔓`
  Parallel corpus of 1,000 sentence pairs in Indonesian, Javanese Ngoko (informal), and Javanese Krama (formal). Unique because it captures the register distinction within Javanese itself — Ngoko vs Krama are used in very different social contexts. Good for translation and style transfer research.
  Size: 1,000 sentence pairs | Languages: Indonesian, Javanese Ngoko, Javanese Krama

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

- **[Barasa](https://huggingface.co/datasets/SEACrowd/barasa)** `🟢` `🔓` `📦`
  Indonesian SentiWordNet — word-level positivity, negativity, and objectivity scores aligned with WordNet 3.0 synsets. Useful complement to InSet for rule-based or hybrid sentiment approaches.

- **[Parallel Corpus for Lexical Normalization](https://github.com/ir-nlp-csui/parallel-corpus-for-lexical-normalization)** `🟡` `🔓`
  Indonesian informal-to-formal parallel corpus for lexical normalization. Maps colloquial social media words to their standard forms — complements Kamusalay and STIF-Indonesia for building text normalization pipelines. By ir-nlp-csui (UI NLP group).


### 1.12 Dialogue & Conversational

*Datasets for building and evaluating conversational AI systems in Indonesian.*

- **[IndoToD](https://github.com/dehanalkautsar/IndoToD)** `🟡` `🔓` `📄`
  Multi-domain Indonesian benchmark for end-to-end task-oriented dialogue systems. Covers 6 domains: hotel, restaurant, attraction, train, taxi, and hospital. Based on MultiWOZ but adapted for Indonesian. SEALP @ AACL 2023.

- **[SEADialogues](https://huggingface.co/datasets/SEACrowd/SEADialogues)** `🟢` `🔓` `📦` `📄`
  Culturally grounded multi-turn dialogue dataset for Southeast Asian languages including Indonesian. Each dialogue includes persona attributes and culturally specific topics reflecting everyday Indonesian life. 2025.

### 1.13 Code-switching

*Datasets for Indonesian text that mixes languages — extremely common in real social media text.*

- **[IndoRobusta](https://github.com/faridlazuarda/indorobusta)** `🟡` `🔓` `📄`
  Framework and dataset for evaluating code-mixing robustness in Indonesian NLP. Covers Indonesian mixed with English, Sundanese, Javanese, and Malay. Reveals that models handle Indonesian-English mixing better than local language mixing. ACL 2022.
  Note: code-switching resources remain limited in Indonesian NLP — see Research Gaps section.

- **[Indonesian-English Code-mixed Twitter](https://github.com/ir-nlp-csui/id-en-code-mixed)** `🟡` `🔓`
  Indonesian-English code-mixed Twitter dataset from ir-nlp-csui (UI NLP group). Real social media text reflecting how Indonesians naturally mix Bahasa and English online — "gue udah makan tapi still hungry". Useful for training models that handle realistic Indonesian social media text.

- **[Code-mixed Javanese-Indonesian](https://huggingface.co/datasets/SEACrowd/code_mixed_jv_id)** `🟢` `🔓` `📦` `📄`
  Sentiment analysis and machine translation dataset for Javanese-Indonesian code-mixed text. One of the few datasets specifically targeting real-world code-mixing patterns between a local language and Bahasa Indonesia.


### Legal NLP

*Indonesian legal NLP resources — one of the most underrepresented but practically important domains.*

> 📌 Indonesian legal NLP is still early-stage. The resources below are the most significant ones that exist, but a large-scale benchmark or comprehensive corpus is still absent — see Research Gaps section.

- **[Indo-Law](https://github.com/ir-nlp-csui/indo-law)** `🟡` `🔓 AGPL-3.0` `📄`
  22,630 Indonesian criminal court decision documents from the Supreme Court (Mahkamah Agung), annotated with 11 structural sections: verdict, legal facts, indictment history, defendant identity, and more. The largest publicly available Indonesian legal NLP dataset. By ir-nlp-csui (UI NLP group).
  Size: 22,630 documents | Format: XML | Paper: Nuranti et al., Computers 2022

- **[Indonesian Legal Knowledge Graph](https://www.researchgate.net/publication/372109353_A_Hybrid_Virtual_Assistant_for_Legal_Domain_Based_on_Information_Retrieval_and_Knowledge_Graphs)** `🟡` `🔓` `📄`
  Knowledge graph built over Indonesian labor law (UU Ketenagakerjaan and UU Cipta Kerja) by Fariz Darari et al. at Universitas Indonesia. Combined with information retrieval to build the first Indonesian legal virtual assistant. 2023.

- **[Granularity-aware Legal QA](https://ijain.org/index.php/IJAIN/article/view/1105)** `🟡` `🔓` `📄`
  Indonesian legal question answering over government regulations at different levels of granularity. By Fariz Darari et al. at UI.

---

### Spelling & Text Normalization

*Datasets for fixing spelling errors and normalizing non-standard Indonesian text — especially important for social media NLP.*

- **[SALTIK](https://github.com/ir-nlp-csui/saltik)** `🟡` `🔓 AGPL-3.0` `📄`
  Indonesian non-word error spelling correction dataset. Covers common typos and misspellings in Indonesian text. Useful for building spell-checkers or preprocessing pipelines that handle noisy user input. By ir-nlp-csui (UI NLP group).

- **[STIF-Indonesia](https://github.com/haryoa/stif-indonesia)** `🟡` `🔓`
  Dataset for Indonesian formal-informal style conversion. Pairs informal social media text with its formal equivalent — useful for normalization before feeding text to NLP models.

---

### 1.14 Web Corpora & Large Text Collections

*Large-scale text collections for pretraining or building general Indonesian language resources. These are usually too big for fine-tuning but important for training models from scratch.*

> ⚠️ **Advanced users only.** If you're just starting out, you don't need any of these. They're for people pretraining language models from scratch — a resource-intensive process requiring significant GPU compute. Most practitioners use existing pre-trained models (like IndoBERT or Cendol) instead.

- **[OSCAR (Indonesian)](https://huggingface.co/datasets/oscar-corpus/OSCAR-2301)** `🟢` `🔓` `📦`
  CommonCrawl-based Indonesian text corpus. ~4B word tokens. One of the largest freely available Indonesian text collections. Good for pretraining.

- **[CC-100](http://data.statmt.org/cc-100/)** `🟢` `🔓`
  FAIR's CommonCrawl extraction. ~4.8B sentences, 6B sentence piece tokens of Indonesian. Used to train many multilingual models including XLM-R.

- **[CulturaX](https://huggingface.co/datasets/uonlp/CulturaX)** `🟢` `🔓` `📦`
  Cleaned multilingual corpus including Indonesian. Better quality than raw CommonCrawl — noise and spam filtered.

- **[Indonesian News Corpus](https://data.mendeley.com/datasets/2zpbjs22k3/1)** `🟡` `🔓`
  150,466 Indonesian news articles from 2015. Good for domain-specific news NLP tasks.

- **[Liputan6 Corpus](https://huggingface.co/datasets/SEACrowd/liputan6)** `🟡` `🔓` `📦`
  Already listed under Summarization — also useful as a general Indonesian news corpus.

- **[Leipzig Corpora (Indonesian)](https://corpora.uni-leipzig.de/en?corpusId=ind_mixed_2013)** `🟡` `🔓`
  74M+ sentences, 1.2B+ tokens. Mix of news and web text. Good baseline corpus.

- **[Indo4B](https://huggingface.co/datasets/SEACrowd/indo4b)** `🟡` `🔓` `📦`
  The actual pretraining corpus used to train IndoBERT — 3.6B words, ~250M sentences from 12 sources covering both formal and colloquial Indonesian. Useful historical reference for understanding what IndoBERT was trained on.

---

### 1.15 Paraphrase & Text Similarity

*Datasets for teaching models that two different sentences can mean the same thing — important for search, semantic similarity, and question answering.*

- **[PAWS-ID](https://github.com/Wikidepia/indonesian_datasets/tree/master/paraphrase/paws)** `🟡` `🔓`
  Indonesian translation of Google's PAWS dataset. 100K human-labeled paraphrase pairs. Tests whether word order and structure changes meaning.

- **[Quora Paraphrasing ID](https://huggingface.co/datasets/SEACrowd/id_qqp)** `🟡` `🔓`
  Indonesian adaptation of Quora question pairs — useful for duplicate question detection and semantic similarity.

- **[ParaNMT-ID](https://github.com/Wikidepia/indonesian_datasets)** `🟡` `🔓`
  Indonesian translation of ParaNMT-50M — large-scale paraphrase pairs generated via neural machine translation. Available in Wikidepia's Indonesian datasets collection (see `paranmt` folder).



---

### 1.16 Knowledge Graphs

*Structured knowledge resources linking Indonesian entities and concepts — useful for question answering, information extraction, and knowledge-grounded NLP.*

> 📌 **Specialized use.** Knowledge graphs are primarily useful for advanced research applications like entity linking, relation extraction, or building knowledge-augmented QA systems. If you're just getting started, you likely won't need these yet.

- **[IndoWiki](https://github.com/IgoRamli/IndoWiki/)** `🟡` `🔓`
  Knowledge graph built from WikiData aligned with Indonesian Wikipedia. 533K+ entities, 939 relations, 2.6M+ triplets. Both transductive and inductive splits available.

- **[WordNet Bahasa](https://sourceforge.net/p/wn-msa/tab/HEAD/tree/trunk/)** `🟡` `🔓`
  Semantic dictionary for Malay and Indonesian inspired by Princeton WordNet. Covers synonyms, antonyms, and word relationships.

- **[Indonesian Legal Knowledge Graph](https://www.researchgate.net/publication/372109353_A_Hybrid_Virtual_Assistant_for_Legal_Domain_Based_on_Information_Retrieval_and_Knowledge_Graphs)** `🟡` `🔓` `📄`
  Knowledge graph built over Indonesian labor law (UU Ketenagakerjaan and UU Cipta Kerja) by Fariz Darari et al. at Universitas Indonesia. Combined with an information retrieval system to create the first Indonesian legal virtual assistant. Covers definition lookup, law component lookup, sanctions, and domain knowledge. 2023.
  Note: one of very few Indonesian legal NLP resources — see Research Gaps section for context.

- **[VizKG](https://github.com/fadirra/vizkg)** `🟡` `🔓`
  Knowledge graph visualization tool by Fariz Darari (UI). Works with SPARQL endpoints including Indonesian Wikidata. Useful for exploring and presenting Indonesian knowledge graph data visually.

---

### 1.17 Multimodal

*Datasets that combine text with images, video, or audio — the frontier of Indonesian NLP.*

> ⚠️ Multimodal Indonesian resources are very sparse — one of the open Research Gaps in the field.

- **[SEA-VL](https://huggingface.co/collections/SEACrowd/sea-vl-multicultural-vl-dataset-for-southeast-asia-67cf223d0c341d4ba2b236e7)** `🟢` `🔓` `📦` `📄`
  Multicultural vision-language dataset for Southeast Asia including Indonesian. 1.28M+ culturally relevant images with captions, collected via crowdsourcing, web crawling, and synthetic generation by native SEA contributors. The largest SEA VL dataset by far. ACL 2025. Full disclosure: I contributed to this dataset.
  Size: 1.28M images | Languages: Multiple SEA

- **[MSVD-Indonesian](https://github.com/willyfh/msvd-indonesian)** `🟡` `🔓` `📄`
  Video-text dataset derived from MSVD, with ~80K video-text pairs in Indonesian. Tasks: text-to-video retrieval and video captioning. One of very few Indonesian video-language datasets.
  Paper: arXiv 2023

- **[IndoMMLU](https://huggingface.co/datasets/indolem/IndoMMLU)** `🟢` `🔓` `📦` `📄`
  Already listed under Benchmarks — also includes multimodal assessment questions covering images and diagrams from Indonesian school exams.

- **Conceptual Captions (Indonesian)** `🟡` `🔓`
  Machine-translated Indonesian image-caption pairs from Google's Conceptual Captions dataset. Useful for training vision-language models on Indonesian captions. Part of the broader community effort to bring multimodal data to Indonesian AI.
  - [CC3M (3M pairs)](https://github.com/google-research-datasets/conceptual-captions)
  - [CC12M (12M pairs)](https://github.com/google-research-datasets/conceptual-12m) 



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
| **Sahabat-AI v2 70B** | 70B | LLM | Indonesian + regional languages, largest open ID LLM | Apache 2.0 | [🔗](https://huggingface.co/GoToCompany/Llama-Sahabat-AI-v2-70B-IT) |
| **NusaBERT** | 200M | Encoder | NER, token classification | MIT | [🔗](https://huggingface.co/cahya/NusaBert-ner-v1.3) |

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

- **[NusaBERT](https://huggingface.co/cahya/NusaBert-ner-v1.3)** `🟢` `🔓 MIT` `📦`
  Cahya Wirawan's newest Indonesian BERT model (April 2025), fine-tuned specifically for NER tasks. 200M parameters. More up-to-date than the original IndoBERT for token classification — worth trying if NER is your task.

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

- **[Sahabat-AI (GoTo-AI)](https://huggingface.co/GoToCompany)** `🟢` `🔓 Apache 2.0` `📦`
  Indonesian LLM suite by PT GoTo Gojek Tokopedia — the company behind Gojek and Tokopedia. Ranges from 8B to 70B parameters. The flagship Llama-Sahabat-AI-v2-70B is the largest open Indonesian LLM available, with deep support for Bahasa Indonesia, Javanese, Sundanese, Balinese, and Batak. Built on SEA-LION foundations with Indonesian-centric continued pretraining. Updated May 2025.

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

- **[IndoLEM](https://indolem.github.io/)** `🟡` `📄`
  The predecessor to IndoNLU — 7 Indonesian NLP tasks spanning morpho-syntax, semantics, and discourse. Introduced alongside the original IndoBERT at COLING 2020. Still useful as a secondary benchmark for morphological and discourse tasks not covered by IndoNLU.
  Paper: [Koto et al., COLING 2020](https://arxiv.org/abs/2011.00677)

- **[IndoNLU](https://github.com/IndoNLP/indonlu)** `🟢` `📄`
  The main Indonesian NLU benchmark. 12 tasks. Public leaderboard where you can see how different models compare. If you build something and want to evaluate it properly, this is the standard.

- **[IndoNLI](https://github.com/ir-nlp-csui/indonli)** `🟢` `📄`
  Indonesian Natural Language Inference benchmark. Tests whether a model truly "understands" the logical relationship between sentences.

- **[IndoMMLU](https://github.com/fajri91/IndoMMLU)** `🟢` `📄`
  Tests LLMs on Indonesian school and university exam questions across multiple subjects. Famous for revealing that most LLMs only pass Indonesian primary school level exams. EMNLP 2023.

- **[IndoCareer](https://huggingface.co/datasets/indolem/IndoCareer)** `🟢` `🔓` `📦` `📄`
  8,834 multiple-choice questions from Indonesian professional certification exams — healthcare, finance, design, tourism, education, law. Tests whether LLMs can handle real professional knowledge in Indonesian. NAACL 2025.

- **[IndoCloze](https://huggingface.co/datasets/indolem/indo_story_cloze)** `🟢` `🔓` `📦` `📄`
  Commonsense story understanding through cloze evaluation — 2,325 Indonesian stories where the model has to pick the right ending. Won Best Paper Award at CSRR (ACL 2022).

### Natural Language Generation (NLG)

- **[IndoNLG](https://github.com/indobenchmark/indonlg)** `🟢` `📄`
  The standard benchmark for Indonesian text generation tasks: summarization, machine translation, and dialogue. Comes with IndoBART and IndoGPT as baseline models. EMNLP 2021.

### Regional Languages

- **[NusaNLU](https://github.com/IndoNLP/nusa-crowd)** `🟢` `📄`
  First zero-shot NLU benchmark for Indonesian and regional languages. 26 datasets across 12 languages. Part of NusaCrowd.

- **[NusaX](https://github.com/IndoNLP/nusax)** `🟢` `📄`
  Multilingual sentiment + MT benchmark across 10 Indonesian local languages. Outstanding Paper EACL 2023.

- **[LoraxBench](https://arxiv.org/abs/2508.12459)** `🟢` `📄`
  The most comprehensive regional benchmark as of 2025 — covers 20 Indonesian languages across multiple tasks.

### Safety & Culture

- **[IndoSafety](https://arxiv.org/abs/2506.02573)** `🟢` `📄`
  Tests whether Indonesian LLMs produce culturally safe and appropriate responses. Covers informal registers, regional languages, and culturally specific norms. 2025 — a relatively new but important area.

- **[IndoCulture](https://huggingface.co/datasets/indolem/IndoCulture)** `🟢` `📦` `📄`
  Tests cultural commonsense reasoning across 11 Indonesian provinces. Interesting because it checks if a model understands Indonesian cultural context, not just language. TACL 2024.

- **[COPAL-ID](https://huggingface.co/datasets/haryoaw/COPAL)** `🟢` `📄`
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

- **[spaCy (Indonesian pipeline)](https://spacy.io/)** `🟢` `🔓 MIT`
  spaCy now has an Indonesian model. Good choice if you want a production-ready NLP pipeline. See the documentation to get started.

- **[Flair](https://github.com/flairNLP/flair)** `🟢` `🔓 MIT`
  Multilingual NLP framework with Indonesian support. Particularly good for NER and sequence labeling.

### Linguistic Analysis

- **[Pujangga](https://github.com/panggi/pujangga)** `🟡` `🔓`
  Indonesian NLP REST API — covers tokenization, NER, POS tagging, morphological analysis. Useful if you want NLP features without running models yourself.

- **[INDRA](https://github.com/davidmoeljadi/INDRA)** `🟡` `🔓`
  Indonesian Resource Grammar for deep linguistic analysis.

- **[IDN Tagged Corpus (CSUI)](https://github.com/ir-nlp-csui/idn-tagged-corpus-CSUI)** `🟡` `🔓`
  Indonesian POS-tagged corpus from Universitas Indonesia's NLP group. Useful as a reference dataset for training POS taggers or evaluating tokenization on Indonesian text. One of the earlier standardized Indonesian tagged corpora. More research-oriented than production use.

- **[MorphInd](http://septinalarasati.com/morphind/)** `🔴 DEPRECATED`
  Indonesian Morphological Analyzer. Original domain is no longer accessible — listed here for historical reference only.

- **[Aksara](https://github.com/ir-nlp-csui/aksara)** `🟢` `🔓 MIT`
  The modern replacement for MorphInd. Indonesian morphological analyzer conforming to Universal Dependencies v2. Handles word segmentation, lemmatization, POS tagging, and morphological features. Outperforms MorphInd on all four tasks. Better choice for any current project.

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
- **[IndoLEM / IndoBERT (2020)](https://arxiv.org/abs/2011.00677)** — Koto et al. The original Indonesian NLP benchmark (7 tasks) and the first IndoBERT model. Predates IndoNLU — the starting point that everything built on.
- **["One Country, 700+ Languages" (2022)](https://aclanthology.org/2022.acl-long.500)** — Aji, Winata, Koto, Cahyawijaya et al. The essential survey of NLP challenges across Indonesia's 700+ languages and dialects. If you want to understand *why* Indonesian NLP is hard, read this first. ACL 2022.

### LLMs for Indonesian

- **[Cendol (2024)](https://arxiv.org/abs/2404.06138)** — Open instruction-tuned LLMs for Indonesian languages.
- **[Komodo (2024)](https://arxiv.org/abs/2403.09298)** — LLM focused on Indonesian regional languages.
- **[IndoMMLU (2023)](https://arxiv.org/abs/2310.04928)** — "LLMs only pass primary school exams in Indonesia." A sobering and important paper.
- **[IndoSafety (2025)](https://arxiv.org/abs/2506.02573)** — Safety evaluation for Indonesian LLMs.

### Low-resource & Regional Languages

- **[SEA-VL (2025)](https://aclanthology.org/2025.acl-long.916)** — Cahyawijaya, Lovenia et al. Multicultural vision-language dataset for SEA. 1.28M+ images. ACL 2025 Long Papers. *(Full disclosure: I'm a co-author of this paper.)*
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
- **[Awesome Indonesian LLM Dataset (2026)](https://medium.com/@irfanfadhullah/awesome-indonesian-llm-dataset-a-game-changer-for-indonesian-ai-13433d33a1b5)** — Overview of the Indonesian NLP Hugging Face ecosystem by Irfan Fadhullah.

### Unified Resource Hubs

These are the "go deeper" destinations once you've outgrown this list:

- **[indonesian-nlp on Hugging Face](https://huggingface.co/indonesian-nlp)** `🟢` — Centralized HF org with standardized Indonesian datasets, models, and documentation.
- **[IndoNLP GitHub Org](https://github.com/IndoNLP)** `🟢` — Research org behind NusaCrowd, NusaX, IndoNLG, IndoNLU. Most active Indonesian NLP research group.
- **[SEACrowd Catalogue](https://seacrowd.github.io/seacrowd-catalogue/)** `🟢` — Browse and filter nearly 1,000 SEA language datasets. Filter by `id` for Indonesian.

- **[awesome-indonesian-llm-dataset](https://github.com/irfanfadhullah/awesome-indonesian-llm-dataset)** `🟢` `🔓 MIT` — Curated collection of Indonesian datasets specifically for LLM and VLM training. 15+ categories including multimodal and vision-language. Good complement if you need LLM-grade training data rather than NLP benchmarks. Also has a [web version](https://irfanfadhullah.github.io/awesome-indonesian-llm-dataset/).

---

## 🌐 Communities

### SEACrowd — the community behind much of Indonesian NLP

[SEACrowd](https://seacrowd.org) is a grassroots-led non-profit building AI tools and resources for Southeast Asia, by Southeast Asians. They're responsible for standardizing and maintaining hundreds of Indonesian NLP datasets, and they're actively welcoming new contributors at all levels.

**Get involved:**
- 🤝 [Contribute](https://seacrowd.org/contribute) — research/technical, language & culture, community & outreach
- 🎓 [Apprenticeship Program](https://seacrowd.org/apprenticeship) — structured path for newcomers to NLP research
- 📋 [Ongoing Projects](https://seacrowd.org/projects) — see what's being built right now

**Find them on:**
[Discord](https://discord.gg/XXRHFuvkTA) · [GitHub](https://github.com/seacrowd) · [Twitter/X](https://twitter.com/seacrowd) · [LinkedIn](https://www.linkedin.com/company/seacrowd/) · [Bluesky](https://bsky.app/profile/seacrowd.bsky.social) · [Mailing List](https://groups.google.com/u/0/g/seacrowd) · [Email](mailto:seacrowd.research@gmail.com)

---

### Other communities

- **[IndoNLP](https://indonlp.github.io)** — Academic research community behind IndoNLU, IndoNLG, NusaCrowd, and most major Indonesian NLP benchmarks.
- **[Hugging Face Indonesian NLP Org](https://huggingface.co/indonesian-nlp)** — Open collaboration hub for Indonesian datasets and models on HuggingFace.

> Know of an active Indonesian NLP Telegram group, forum, or Discord? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues) to add it!

---

## 🔬 Research Gaps

*These are areas where Indonesian NLP resources are still significantly lacking. If you're looking for a thesis topic or research direction, these are real open problems.*

- **Legal NLP** — Indo-Law (22,630 court documents) and Fariz Darari et al.'s Legal KG are important starting points, but a comprehensive large-scale legal benchmark covering diverse law types and tasks remains absent. Huge practical demand from law firms, government, and compliance.
- **Medical / Clinical NLP** — No public Indonesian clinical notes or medical QA dataset. Critical for healthcare AI in Indonesia and one of the most practically impactful gaps in the field.
- **Code-switching** — Bahasa Indonesia mixed with English, Javanese, or Sundanese is extremely common on social media. Resources like IndoRobusta and id-en-code-mixed exist but are limited in scale and domain coverage. A large, diverse code-switching corpus is still missing.
- **Multimodal NLP** — SEA-VL and MSVD-Indonesian are meaningful starts, but Indonesian image captioning, visual QA, and document understanding datasets remain very sparse compared to English.
- **Dialect variation** — Almost all datasets use formal Bahasa Indonesia. Regional dialects and informal registers (Jaksel, Gaul, colloquial Javanese-Indonesian) are mostly uncovered — a significant gap given how Indonesians actually communicate.
- **Speech synthesis (TTS)** — ASR (speech-to-text) has growing resources; TTS (text-to-speech) for Indonesian, especially regional accents and minority languages, is still very limited.
- **Long-form document understanding** — No Indonesian equivalent of contract understanding, scientific paper QA, or multi-document summarization benchmarks.
- **Safety & alignment data** — IndoSafety (2025) is a meaningful start, but RLHF preference data and red-teaming datasets in Indonesian are nearly absent.

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
- **[NusaCrowd](https://github.com/IndoNLP/nusa-crowd)** and **[SEACrowd](https://github.com/SEACrowd)** — the research initiatives I contributed to that showed me how much the Indonesian NLP community has built
- **[indonesian-nlp/nlp-resources](https://github.com/indonesian-nlp/nlp-resources)** and **[irfnrdh/Awesome-Indonesia-NLP](https://github.com/irfnrdh/Awesome-Indonesia-NLP)** — other curated lists in this space
- The entire **IndoNLP**, **IndoLEM**, and **NusaCrowd** research communities for building these resources in the first place

---

*This list only aggregates publicly available resources. Please refer to each resource's original license before use in your projects.*

*Found something outdated or missing? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues) — I'm actively maintaining this.*
