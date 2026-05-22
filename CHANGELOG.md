# Changelog

All notable changes documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) · Versions: `YYYY.MM`

---

## [Unreleased]

## [2026.05b] — 2026-05-22

### Added
**New Sections**
- Legal NLP: Indo-Law (22,630 court documents, ir-nlp-csui), Indonesian Legal KG moved here from Knowledge Graphs, Granularity-aware Legal QA
- Spelling & Text Normalization: SALTIK (ir-nlp-csui), STIF-Indonesia moved here from Paraphrase

**Datasets — Code-switching**
- Indonesian-English Code-mixed Twitter (ir-nlp-csui/id-en-code-mixed)
- Code-mixed Javanese-Indonesian (SEACrowd/code_mixed_jv_id)

**Datasets — Regional Languages**
- NgokoKrama — Indonesian, Javanese Ngoko & Krama parallel corpus (ir-nlp-csui)

**Datasets — Lexical Resources**
- Parallel Corpus for Lexical Normalization (ir-nlp-csui)

**Datasets — Question Answering**
- StatMetaQA — Indonesian statistical meta QA (ir-nlp-csui)

**Tools — Linguistic Analysis**
- IDN Tagged Corpus CSUI — POS-tagged Indonesian corpus (ir-nlp-csui)

### Updated
**Research Gaps**
- Legal NLP — updated to reflect Indo-Law and Legal KG as existing foundations
- Code-switching — added back as gap (resources exist but limited in scale)
- Multimodal — added back as gap (SEA-VL and MSVD-Indonesian exist but sparse)

**Table of Contents**
- Added Legal NLP and Spelling & Text Normalization sections

## [2026.05] — 2026-05-22 — Major cleanup & update

### Fixed
- All dates updated from 2025-05 to 2026-05 throughout
- State of Indonesian NLP title updated to (2026)
- Dead links fixed: id_clickbait, id_liputan6, NusaX-MT, IndoCulture, IndoQA, Quora Paraphrasing ID → all now pointing to SEACrowd standardized versions
- stor.akmal.dev domain dead — ParaNMT-ID redirected to Wikidepia/indonesian_datasets
- CC3M/CC12M link updated to SEACrowd/cc3m_id
- MorphInd flagged 🔴 DEPRECATED (domain dead)
- Removed dead tutorial links: bagas.me, structilmy.com

### Added
**Datasets**
- IDNer News 2K (SEACrowd/idner_news_2k) — standardized NER
- IndQNER (SEACrowd/indqner) — Quran-domain NER
- Indo General MT (SEACrowd/indo_general_mt_en_id) — multi-domain EN-ID MT
- IndSpeech News LVCSR (SEACrowd/indspeech_news_lvcsr) — 40+ hour ASR corpus
- ASR-INDOCSC (SEACrowd/asr_indocsc) — conversational ASR
- Code-mixed Javanese-Indonesian (SEACrowd/code_mixed_jv_id)
- Barasa (SEACrowd/barasa) — Indonesian SentiWordNet
- Indo4B (SEACrowd/indo4b) — IndoBERT pretraining corpus

**Tools**
- Aksara — modern replacement for MorphInd, conforms to UD v2

### Updated
- Research Gaps — removed code-switching and multimodal (now covered in repo), updated others
- Web Corpora section — added ⚠️ Advanced users only warning
- Knowledge Graphs section — added specialized use context note
- Essential 7 — Cendol and Sahabat-AI both mentioned with compute tradeoff note
- Communities — full SEACrowd block with all social links, apprenticeship, programs
- SEACrowd transparency note added near Datasets header
- IndoSum now links to SEACrowd/indosum alongside original GitHub

## [2025.05f] — 2025-05-21 — Final additions

### Added
**Benchmarks — NLU**
- IndoLEM (Koto et al., COLING 2020) — 7-task Indonesian NLP benchmark, predecessor to IndoNLU

**Research Papers — Foundational**
- IndoLEM / IndoBERT (2020) — Koto et al.
- "One Country, 700+ Languages" (ACL 2022) — Aji, Winata, Koto, Cahyawijaya et al.

## [2025.05e] — 2025-05-21

### Added
**Datasets — Knowledge Graphs**
- Indonesian Legal Knowledge Graph (Fariz Darari et al., UI) — first Indonesian legal KG + virtual assistant
- VizKG (Fariz Darari) — knowledge graph visualization tool for Indonesian Wikidata

**Research Gaps**
- Updated Legal NLP gap with pointers to Fariz Darari's existing work at UI

## [2025.05d] — 2025-05-21

### Added
**Models**
- Sahabat-AI / GoTo-AI (8B–70B, PT GoTo Gojek Tokopedia) — largest open Indonesian LLM
- NusaBERT (Cahya Wirawan, Apr 2025) — NER-optimized Indonesian BERT

**Tools**
- Indonesian Whisperer (Cahya Wirawan) — Whisper fine-tuned for Indonesian ASR

**Datasets — New Sections**
- Dialogue & Conversational: IndoToD, SEADialogues
- Code-switching: IndoRobusta

**Datasets — Multimodal**
- SEA-VL (ACL 2025) — 1.28M SEA culturally relevant images

**Research Papers**
- SEA-VL (ACL 2025)

**Structure**
- Updated model comparison table with Sahabat-AI and NusaBERT
- Updated TOC with new sections

## [2025.05c] — 2025-05-21

### Added
**Datasets — New Sections**
- Web Corpora & Large Text Collections (OSCAR, CC-100, CulturaX, Leipzig, Indonesian News Corpus)
- Paraphrase & Text Similarity (PAWS-ID, Quora Paraphrasing ID, ParaNMT-ID, STIF-Indonesia)
- Knowledge Graphs (IndoWiki, WordNet Bahasa)
- Multimodal (MSVD-Indonesian, CC3M/CC12M Indonesian)

**Benchmarks**
- IndoCareer (professional certification exams, NAACL 2025)
- IndoCloze (commonsense story understanding, Best Paper ACL 2022)

**Tutorials — Unified Hubs**
- awesome-indonesian-llm-dataset by irfanfadhullah

**Structure**
- Updated Table of Contents with new sections

## [2025.05b] — 2025-05-21

### Added
- QUICK-START.md — copy-paste code examples for 6 common tasks
- BY-USE-CASE.md — find your starting point by what you want to build
- BY-ROLE.md — tailored paths for students, developers, researchers, linguists
- COMMON-PITFALLS.md — solutions to the most common errors and problems
- GETTING-HELP.md — how to get support and contribute

---

## [2025.05] — 2025-05-21 — Initial Release 🎉

### Added
**Core files**
- README.md — full curated resource list with beginner-friendly descriptions
- START-HERE.md — complete beginner guide to Indonesian NLP
- ROADMAP.md — structured learning paths for 4 different goals
- CONTRIBUTING.md, CHANGELOG.md, LICENSE

**Datasets**
- NusaCrowd (137 datasets, ACL 2023 Findings)
- NusaX / NusaX-MT (Outstanding Paper EACL 2023)
- NusaWrites (regional language corpora)
- NusaAksara (indigenous scripts, 2025)
- IndoNLI (human-annotated NLI)
- IndoQA, LibriVox Indonesia

**Models**
- Merak 7B, Cendol, Komodo 7B, Kancil V0
- SeaLLM, SEA-LION
- Full model comparison table

**Benchmarks**
- IndoMMLU (EMNLP 2023)
- NusaNLU, LoraxBench (2025)
- IndoSafety (2025), IndoCulture (TACL 2024), COPAL-ID

**Structure**
- Essential 7 section (curated starting picks)
- Research Gaps section
- Status badges (🟢 🟡 🔴) for all entries
- Deprecated flag on GetOldTweets3

### Acknowledged
- louisowen6/NLP_bahasa_resources (original inspiration)
- NusaCrowd and SEACrowd (contributor)
