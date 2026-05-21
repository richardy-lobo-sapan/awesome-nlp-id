# 🗺️ Indonesian NLP Learning Roadmap

*Step-by-step paths depending on what you're trying to do. Pick the one that fits your goal.*

> 💡 Haven't read [START-HERE.md](START-HERE.md) yet? Do that first — it explains the vocabulary you'll need.

---

## Path 1: I want to build a sentiment analyzer for Indonesian text

**Time estimate:** 2–4 weeks (part-time)
**Good for:** Developers, students doing a practical project, anyone wanting to analyze Indonesian product reviews / social media

---

**Week 1 — Understand what you're dealing with**

- [ ] Read [START-HERE.md](START-HERE.md) sections on datasets and pre-trained models
- [ ] Browse the [SmSA dataset](https://github.com/indobenchmark/indonlu) — look at actual examples, understand the labels
- [ ] Read this short intro: [What is Sentiment Analysis?](https://monkeylearn.com/sentiment-analysis/)
- [ ] Decide: is your text formal Indonesian, or social media/informal text?
  - Formal → use IndoBERT
  - Social media / Twitter → use IndoBERTweet

**Week 2 — Get hands-on with the data**

- [ ] Set up [Google Colab](https://colab.research.google.com) (free, no setup needed)
- [ ] Load SmSA with the HuggingFace datasets library:
  ```python
  from datasets import load_dataset
  dataset = load_dataset("indonlp/indonlu", "smsa")
  print(dataset["train"][0])
  ```
- [ ] Explore the data — how many examples? What's the label distribution? Are there any weird examples?
- [ ] Try the preprocessing: tokenize with IndoBERT's tokenizer, stem with PySastrawi

**Week 3 — Fine-tune your model**

- [ ] Follow the [IndoBERT fine-tuning notebook](https://colab.research.google.com/drive/1yFphU6PW9Uo6lmDly_ud9a6c4RCYlwdX)
- [ ] Fine-tune IndoBERT on SmSA
- [ ] Track accuracy on the validation set — aim for 80%+ as a baseline

**Week 4 — Evaluate and improve**

- [ ] Test on the official test set
- [ ] Compare your score to the [IndoNLU leaderboard](https://www.indobenchmark.com)
- [ ] Try one improvement: different learning rate, more epochs, or switch to IndoBERTweet
- [ ] Write up what you found

**You're done when:** You have a fine-tuned model that can classify Indonesian sentiment, and you understand why it makes the predictions it does.

---

## Path 2: I want to write a thesis on Indonesian NLP

**Time estimate:** 3–6 months
**Good for:** University students, researchers looking for a focused contribution

---

**Month 1 — Survey the landscape**

- [ ] Read [START-HERE.md](START-HERE.md) completely
- [ ] Read the [State of Indonesian NLP](README.md#-state-of-indonesian-nlp-2025) section
- [ ] Read the [Research Gaps](README.md#-research-gaps) section — this is your opportunity space
- [ ] Read these 3 foundational papers:
  - [IndoBERT / IndoNLU (2020)](https://arxiv.org/abs/2009.05387)
  - [IndoNLG (2021)](https://arxiv.org/abs/2104.08200)
  - [NusaCrowd (2023)](https://aclanthology.org/2023.findings-acl.868)
- [ ] Browse [NusaCrowd](https://github.com/IndoNLP/nusacrowd) and [SEACrowd](https://seacrowd.github.io/seacrowd-catalogue/) to understand what already exists

**Month 2 — Narrow your topic**

Pick ONE of these angles based on what genuinely interests you:

**Option A: A new dataset**
Create a dataset for a task or domain that doesn't have one yet. Check [Research Gaps](README.md#-research-gaps) — legal NLP, medical NLP, code-switching, and dialect variation are all open territory.

**Option B: A benchmark contribution**
Evaluate existing Indonesian models on a task where evaluation is currently lacking (safety, cultural reasoning, long documents).

**Option C: A new model or fine-tuning approach**
Adapt an existing model (LLaMA, Mistral, etc.) to Indonesian for a specific domain (law, medicine, regional language).

**Option D: Analysis / survey**
Systematically analyze the current state of Indonesian NLP in a specific area — summarization quality, LLM cultural bias, cross-lingual transfer performance.

**Month 3–4 — Build and experiment**

- [ ] Set up your experiments with proper versioning (use [Weights & Biases](https://wandb.ai) for tracking)
- [ ] Run multiple baselines before your main contribution
- [ ] Document everything — your advisor will thank you
- [ ] Consider contributing your dataset to NusaCrowd or SEACrowd — it dramatically increases visibility

**Month 5–6 — Write and evaluate**

- [ ] Compare against existing benchmarks where possible
- [ ] Submit to [NusaCrowd](https://github.com/IndoNLP/nusacrowd) or [SEACrowd](https://github.com/SEACrowd) if you created a new dataset
- [ ] Consider submitting to a conference: ACL, EMNLP, EACL, or the [INLP workshop](https://indonlp.github.io)

**You're done when:** You have a research contribution that didn't exist before — whether that's a new dataset, a new model, or a new analysis.

---

## Path 3: I want to build an Indonesian LLM application

**Time estimate:** 1–2 weeks to get something running
**Good for:** Developers building products, AI engineers exploring Indonesian LLMs

---

**Step 1 — Try before you build (Day 1)**

Before writing any code, just try the models:
- [ ] Load [Cendol](https://huggingface.co/indonlp/cendol-llama2-7b) on HuggingFace Spaces
- [ ] Try [Merak 7B](https://huggingface.co/Ichsan2895/Merak-7B-v4) similarly
- [ ] Test with real Indonesian prompts — things your users would actually say
- [ ] Identify where they fail — this tells you if you need to fine-tune or if a base model is enough

**Step 2 — Understand your compute constraints (Day 2)**

LLMs are resource-hungry. Be realistic:
- 7B model needs ~14GB GPU VRAM to run in full precision
- With quantization (4-bit): ~4–6GB — runnable on a decent gaming GPU or Google Colab with A100
- For production: look at [Ollama](https://ollama.ai) (local) or HuggingFace Inference API (cloud)

**Step 3 — Build a simple pipeline (Week 1)**

```python
from transformers import AutoTokenizer, AutoModelForCausalLM

model_name = "indonlp/cendol-llama2-7b"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(model_name)

prompt = "Jelaskan apa itu machine learning dalam Bahasa Indonesia:"
inputs = tokenizer(prompt, return_tensors="pt")
outputs = model.generate(**inputs, max_new_tokens=200)
print(tokenizer.decode(outputs[0]))
```

**Step 4 — Evaluate honestly (Week 2)**

- [ ] Test on [IndoMMLU](https://github.com/fajri91/IndoMMLU) — the Indonesian LLM benchmark
- [ ] Test on your specific use case with real examples
- [ ] Compare: Cendol vs Merak vs Komodo vs multilingual models (SeaLLM, SEA-LION)
- [ ] Decide if you need fine-tuning or if prompting is enough

**You're done when:** You have a working Indonesian LLM pipeline and an honest picture of where it works and where it doesn't.

---

## Path 4: I want to work with Indonesian regional languages

**Time estimate:** Highly variable — regional language resources are sparse
**Good for:** Researchers, language preservation advocates, people from specific regions

---

**Step 1 — Understand the landscape**

- [ ] Read the [Regional Languages of Indonesia](README.md#regional-languages-of-indonesia) section
- [ ] Browse [NusaCrowd](https://github.com/IndoNLP/nusacrowd) and filter by your target language
- [ ] Use the [SEACrowd Catalogue](https://seacrowd.github.io/seacrowd-catalogue/) to find existing datasets
- [ ] Read [NusaX paper](https://aclanthology.org/2023.eacl-main.57) — best overview of the state of regional Indonesian NLP

**Step 2 — Be realistic about what exists**

Honest assessment by language:
- **Javanese**: decent coverage — NusaX, some NER data
- **Sundanese**: some coverage — NusaX, limited other datasets
- **Balinese**: NusaX coverage, otherwise sparse
- **Most others**: extremely sparse — you may need to create your own data

**Step 3 — If you need to create data**

- [ ] Study [NusaWrites](https://github.com/IndoNLP/nusa-writes) methodology — native speaker paragraph writing beats scraped data
- [ ] Find native speaker collaborators — essential for quality
- [ ] Consider contributing to an existing initiative rather than starting from scratch
- [ ] [NusaCrowd contribution guide](https://github.com/IndoNLP/nusacrowd/blob/master/CONTRIBUTING.md) — submit your dataset here for maximum visibility

**You're done when:** You have a clear picture of what exists for your target language and a plan for what to do about the gaps.

---

## Not sure which path?

Answer these questions:

1. **Do you want to build something practical or do research?**
   - Practical → Path 1 or Path 3
   - Research → Path 2 or Path 4

2. **Do you have a specific language in mind beyond standard Bahasa Indonesia?**
   - Yes → Path 4
   - No → Path 1, 2, or 3

3. **Are you comfortable with Python and machine learning basics?**
   - Yes → start anywhere
   - No → do Path 1 first, it's the most structured

---

*Back to [README.md](README.md) · [START-HERE.md](START-HERE.md)*
