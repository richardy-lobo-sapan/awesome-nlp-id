# Changelog

All notable changes documented here.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) · Versions: `YYYY.MM`

---

## [Unreleased]

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
