# 🎓 Getting Started By Role

*Not everyone comes to NLP with the same background. Pick your role to find your fastest path forward.*

---

## Table of Contents

1. [Data Scientist / ML Engineer](#1-data-scientist--ml-engineer)
2. [Backend / Full-Stack Developer](#2-backend--full-stack-developer)
3. [Linguist / Language Researcher](#3-linguist--language-researcher)
4. [Student (Thesis/Capstone)](#4-student-thesiscapstone)
5. [Product / Business Person](#5-product--business-person)
6. [Open Source / Hobbyist](#6-open-source--hobbyist)

---

## 1. Data Scientist / ML Engineer

**You know:** Statistics, Python, model training, evaluation metrics

**Your advantage:** You can jump straight to technical work

**Start here:**

1. **Today:** Read [START-HERE.md](START-HERE.md) Section 3 (The Jargon) — 20 min, just to sync on terminology
2. **Today:** Run [QUICK-START.md](QUICK-START.md) Sections 1–3 to understand the Indonesian data landscape — 30 min
3. **This week:** Pick a use case from [BY-USE-CASE.md](BY-USE-CASE.md) (1–5) and fine-tune on real data
4. **This week:** Benchmark your model on [IndoNLU](https://www.indobenchmark.com) to see how it compares

**Skip:** START-HERE.md full sections on "Why Indonesian NLP" — you're ready for practical work

**Key resources for you:**
- [Pre-trained Models](README.md#-pre-trained-models) — pick the architecture that fits your task
- [Benchmarks & Leaderboards](README.md#-benchmarks--leaderboards) — set your evaluation targets
- [Research Papers](README.md#-research-papers) — understand the methodology
- [ROADMAP Path 1](ROADMAP.md#path-1-i-want-to-build-a-sentiment-analyzer) or [Path 3](ROADMAP.md#path-3-i-want-to-build-an-indonesian-llm-application) — structured paths for your project type

**Common next moves:**
- Want to publish? → [ROADMAP Path 2](ROADMAP.md#path-2-i-want-to-write-a-thesis-on-indonesian-nlp)
- Want to optimize for production? → Use quantized models ([COMMON-PITFALLS.md Section 2](COMMON-PITFALLS.md#2-model-loading--memory-issues))
- Want to work with regional languages? → [ROADMAP Path 4](ROADMAP.md#path-4-i-want-to-work-with-indonesian-regional-languages)

---

## 2. Backend / Full-Stack Developer

**You know:** APIs, deployment, systems design, production concerns

**Your advantage:** You understand production constraints and can ship quickly

**Start here:**

1. **Today:** Skim [START-HERE.md](START-HERE.md) Sections 1–3 (30 min) — understand what NLP actually does
2. **Today:** Try [QUICK-START.md](QUICK-START.md) Section 1 in 5 minutes — just to see it work
3. **This week:** Read [BY-USE-CASE.md](BY-USE-CASE.md) for your specific feature (sentiment? chatbot?)
4. **This week:** Deploy using [HuggingFace Inference API](https://huggingface.co/inference-api) or [Ollama](https://ollama.ai) — no ML expertise needed

**Skip:** Complex fine-tuning if not necessary — use pre-trained models directly

**Production-ready packages:**
- [HuggingFace Inference API](https://huggingface.co/inference-api) — serverless, easy API
- [Ollama](https://ollama.ai) — local inference for LLMs
- [spaCy](https://spacy.io/models/id) — production NLP pipeline
- [FastAPI](https://fastapi.tiangolo.com/) + Transformers — build custom API

**Common backend questions:**
- "How do I cache results?" → Use Redis + hash the input
- "How do I handle rate limiting?" → Use HuggingFace with rate limits, or self-host with throttling
- "Do I need to fine-tune?" → Start with pre-trained. Fine-tune only if performance is bad
- "How do I monitor model performance in production?" → Log predictions, compare to baseline monthly

**Next moves:**
- Want to integrate sentiment analysis into your app? → [BY-USE-CASE.md #1](BY-USE-CASE.md#1-build-a-sentiment-analyzer)
- Want to add a chatbot? → [BY-USE-CASE.md #2](BY-USE-CASE.md#2-build-a-chatbot-or-qa-system)
- Need help troubleshooting? → [COMMON-PITFALLS.md](COMMON-PITFALLS.md)

---

## 3. Linguist / Language Researcher

**You know:** Linguistics, morphology, grammar, language structure

**Your advantage:** You understand the language deeply — use that

**Start here:**

1. **This week:** Read all of [START-HERE.md](START-HERE.md) — it uses linguistic concepts
2. **This week:** Read [State of Indonesian NLP](README.md#-state-of-indonesian-nlp-2025) — understand the gap
3. **This week:** Read [Research Gaps](README.md#-research-gaps) — find your research area
4. **Next week:** Explore [Regional Languages section](README.md#regional-languages-of-indonesia) if interested in underserved languages

**Your unique position:**
You can identify **linguistic problems** that ML researchers miss. For example:
- Code-switching patterns
- Regional dialect variation
- Morphological edge cases
- Grammatical phenomena

**Research opportunities:**
Pick one from [Research Gaps](README.md#-research-gaps):
- Legal NLP? Use your domain knowledge to build better datasets
- Dialect variation? Annotate data that captures real Indonesian speech
- Regional languages? Partner with native speakers to create high-quality corpora

**Key resources:**
- [NusaCrowd](https://github.com/IndoNLP/nusacrowd) — explore linguistic diversity in datasets
- [NusaWrites](https://github.com/IndoNLP/nusa-writes) — see how native speaker data differs from scraped data
- [Research Papers](README.md#-research-papers) — understand current linguistic coverage

**Recommended reading:**
- [IndoBERT paper](https://arxiv.org/abs/2009.05387) — understand what linguistic phenomena models capture
- [NusaX paper](https://aclanthology.org/2023.eacl-main.57) — multilingual linguistic diversity

**Your research path:** [ROADMAP Path 2](ROADMAP.md#path-2-i-want-to-write-a-thesis-on-indonesian-nlp)

---

## 4. Student (Thesis/Capstone)

**You have:** 3–6 months, need to publish something novel, possibly limited compute

**Your advantage:** Time to do thorough research and contribute to the field

**Your timeline:**

**Month 1 — Exploration**
- [ ] Read all of [START-HERE.md](START-HERE.md)
- [ ] Read [State of Indonesian NLP](README.md#-state-of-indonesian-nlp-2025)
- [ ] Read [Research Gaps](README.md#-research-gaps) — what problem interests you?
- [ ] Read 3 foundational papers from [Research Papers](README.md#-research-papers)
- [ ] Browse [NusaCrowd](https://github.com/IndoNLP/nusacrowd) to see what exists

**Month 2 — Planning**
- [ ] Narrow down your topic to ONE specific problem
- [ ] Literature review — read 5–10 related papers
- [ ] Design your contribution (dataset? model? analysis? benchmark?)
- [ ] Check if similar work exists
- [ ] Create a hypothesis or research question

**Months 3–4 — Execution**
- [ ] Build your contribution
- [ ] Run proper baselines and comparisons
- [ ] Document everything (advisors love this)
- [ ] Test on [relevant benchmarks](README.md#-benchmarks--leaderboards)

**Months 5–6 — Writing & Publication**
- [ ] Write up your findings clearly
- [ ] Consider contributing to [NusaCrowd](https://github.com/IndoNLP/nusacrowd) or [SEACrowd](https://github.com/SEACrowd) for visibility
- [ ] Submit to a conference (ACL, EMNLP, EACL, or INLP workshop)
- [ ] Get feedback from [IndoNLP community](README.md#-communities)

**See full details:** [ROADMAP Path 2](ROADMAP.md#path-2-i-want-to-write-a-thesis-on-indonesian-nlp)

**Thesis topic ideas** (from Research Gaps):
1. **Legal NLP Dataset** — Scrape and annotate Indonesian legal documents
2. **Medical NLP Benchmark** — Create a dataset for clinical notes analysis
3. **Code-switching Analysis** — Study Bahasa + English mixing on social media
4. **Dialect Variation** — Analyze how models perform on different Indonesian dialects
5. **Multimodal NLP** — Build Indonesian image captioning dataset

---

## 5. Product / Business Person

**You need:** Quick understanding without getting deep into the technical weeds

**Your advantage:** You understand business constraints and can set realistic expectations

**Read this, skip everything else:**

1. **[State of Indonesian NLP](README.md#-state-of-indonesian-nlp-2025)** — understand what's possible (30 min)
2. **[🌟 Essential 7](README.md#-start-here--the-essential-7)** — these are the main tools available
3. **[BY-USE-CASE.md](BY-USE-CASE.md)** — see if your feature idea is doable

**Quick translations for your decision:**

| Your Need | Best Resource | Reality Check |
|-----------|---------------|---------------|
| "Add sentiment to our platform" | [BY-USE-CASE #1](BY-USE-CASE.md#1-build-a-sentiment-analyzer) | Doable in 2 weeks, ~80% accuracy |
| "Build a support chatbot" | [BY-USE-CASE #2](BY-USE-CASE.md#2-build-a-chatbot-or-qa-system) | Doable but needs care, 60-70% accuracy |
| "Extract names/companies from text" | [BY-USE-CASE #3](BY-USE-CASE.md#3-extract-names-and-entities) | Doable, 85%+ accuracy |
| "Auto-categorize our content" | [BY-USE-CASE #4](BY-USE-CASE.md#4-categorize-text-automatically) | Doable, customize by category |
| "Auto-summarize articles" | [BY-USE-CASE #5](BY-USE-CASE.md#5-auto-summarize-long-documents) | Possible but quality varies |
| "Translate to/from Indonesian" | [BY-USE-CASE #6](BY-USE-CASE.md#6-translate-indonesian-to-english-or-vice-versa) | Use existing API (Google, AWS) |

**Questions to ask your tech lead:**
- "Do we use the free pre-trained model or invest in custom fine-tuning?"
  → Start with pre-trained. Fine-tune only if free version underperforms
- "Can we build this with our current team?"
  → Yes, if you have a junior ML engineer or outsource it
- "What if the model makes mistakes?"
  → It will. Build workflows that catch them (human review, explicit disclaimers)

---

## 6. Open Source / Hobbyist

**You have:** Enthusiasm and free time, want to contribute to Indonesian NLP

**Your advantage:** Community is small and welcoming — your contributions matter

**Easy wins (1–4 hours):**
- [ ] Add a resource to [README.md](README.md) via [CONTRIBUTING.md](CONTRIBUTING.md)
- [ ] Report broken links or outdated info via GitHub Issues
- [ ] Translate a tutorial to Bahasa Indonesia
- [ ] Test a model and share results in Discussions

**Medium effort (1–2 weeks):**
- [ ] Build a simple script using Indonesian NLP (sentiment analyzer, NER extractor)
- [ ] Create a Colab notebook with a tutorial
- [ ] Contribute a dataset to [NusaCrowd](https://github.com/IndoNLP/nusacrowd)
- [ ] Write a blog post about Indonesian NLP

**Big contributions (1–3 months):**
- [ ] Create a new dataset for an underserved task
- [ ] Fine-tune a new model for Indonesian
- [ ] Build a tool or library that makes Indonesian NLP easier
- [ ] Organize a hackathon or workshop

**Get featured:** Your contributions can be added to [README.md](README.md)! See [CONTRIBUTING.md](CONTRIBUTING.md)

---

*Still not sure which role fits you? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new/choose) and tell us your background. We'll guide you.*

*← Back to [README.md](README.md)*