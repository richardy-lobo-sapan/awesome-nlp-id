# 🤝 Getting Help & Contributing

*Stuck? Have a question? Want to contribute? Here's how to get support and make this resource better.*

---

## Table of Contents

1. [Where to Get Help](#where-to-get-help)
2. [Common Questions](#common-questions)
3. [How to Ask a Good Question](#how-to-ask-a-good-question)
4. [Contributing](#contributing)
5. [Community](#community)

---

## Where to Get Help

### For Issues with This Repository

**Report a broken link or outdated info:**
→ [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new?assignees=&labels=bug&template=bug-report.md&title=) with label `bug`

**Report missing resources:**
→ [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new?assignees=&labels=enhancement&template=add-resource.md&title=Add%3A+) with label `enhancement`

**Ask a question about this repo:**
→ [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new?assignees=&labels=question&template=question.md&title=) with label `question`

**Improve the documentation:**
→ [Open a PR](https://github.com/richardy-lobo-sapan/awesome-nlp-id/compare) or see [CONTRIBUTING.md](CONTRIBUTING.md)

---

### For Indonesian NLP Technical Help

**General Indonesian NLP questions:**
- **[IndoNLP GitHub Discussions](https://github.com/IndoNLP)** — Active community, very responsive
- **[SEACrowd Discord](https://github.com/SEACrowd)** — Southeast Asian focus, friendly
- **[NusaCrowd Issues](https://github.com/IndoNLP/nusacrowd/issues)** — For dataset/loader questions

**Stack Overflow:**
- Tag: `indonesian-nlp` or `bahasa-indonesia`

---

## Common Questions

### "Why isn't my model performing well?"

→ See [COMMON-PITFALLS.md Section 4](COMMON-PITFALLS.md#4-model-performance-problems)

### "Should I use this model or that model?"

→ See [COMMON-PITFALLS.md Section 8](COMMON-PITFALLS.md#8-when-to-use-which-tool)

### "How do I use this in production?"

→ See [BY-ROLE.md Section 2](BY-ROLE.md#2-backend--full-stack-developer)

### "Where can I find Indonesian NLP data?"

→ See [README.md Datasets section](README.md#-datasets)

---

## How to Ask a Good Question

### Good question ✅

```markdown
**Environment:**
- Python 3.9, PyTorch 2.0, transformers 4.30
- Google Colab with GPU

**What I'm trying to do:**
Fine-tune IndoBERT on SmSA sentiment dataset

**Error I'm getting:**
```
RuntimeError: Expected all tensors to be on the same device
```

**What I've tried:**
- Moving model to GPU with `model.to("cuda")`
- Checked `torch.cuda.is_available()` — returns True
```

**Why this is better:**
- Reproducible (we can run your code)
- Context (environment, goal)
- What you've tried (narrows down solutions)
- Error message (makes debugging easier)

---

## Contributing

### Easy ways to contribute

1. **Report bugs or broken links** → 5 minutes
2. **Suggest a missing resource** → 10 minutes
3. **Improve documentation** → 20 minutes
4. **Share your project** → Tell us about Indonesian NLP projects you've built

### How to submit a contribution

**Option 1: Report via issue (easiest)**
→ [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new/choose)

**Option 2: Submit a PR**
→ See [CONTRIBUTING.md](CONTRIBUTING.md)

---

## Community

### Active Communities

- **[IndoNLP](https://indonlp.github.io)** — Most active Indonesian NLP research group
- **[SEACrowd](https://seacrowd.github.io/)** — Southeast Asia focus
- **[HuggingFace Indonesian-NLP](https://huggingface.co/indonesian-nlp)** — Share models & datasets

---

*Still stuck? [Open an issue](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new/choose) and describe what you're trying to do.*

*← Back to [README.md](README.md)*