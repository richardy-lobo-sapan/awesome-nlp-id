# Contributing to awesome-nlp-id 🤝

First off — thank you! This repo gets better every time someone adds something new or fixes something outdated.

---

## What we're looking for

✅ **Good contributions:**
- New datasets, models, benchmarks, or tools for Indonesian NLP
- Updates to existing entries (new version, changed license, etc.)
- Flagging broken links or deprecated resources
- Improving descriptions to be clearer for beginners
- Adding to the Research Gaps section
- Fixing typos

❌ **Please don't submit:**
- Resources behind paywalls with no public access path
- Resources unrelated to Indonesian or Indonesian regional languages
- Self-promotion without genuine community value
- Duplicates of existing entries

---

## Entry format

Every resource should follow this format:

```markdown
- **[Resource Name](URL)** `STATUS` `LICENSE` `OPTIONAL_BADGES`
  One to two sentence description in plain English —
  what it is, what task it's for, why it's useful.
  Size: X | Updated: YYYY
```

**Status badges:**
- `🟢` — Actively maintained (updated in the last 12 months)
- `🟡` — Unmaintained but still usable
- `🔴` — Deprecated / broken (add this before removing)

**License:**
- `🔓 MIT` / `🔓 Apache 2.0` / `🔓 CC-BY-SA` — open license (specify type)
- `🔒` — restricted or unclear license

**Optional:**
- `📦` — available on Hugging Face
- `📄` — has an associated paper

**Example:**
```markdown
- **[IndoBERT](https://huggingface.co/indobenchmark/indobert-base-p1)** `🟢` `🔓 MIT` `📦` `📄`
  The most widely used Indonesian pre-trained model. Trained on ~4B words of
  Indonesian text. Best starting point for classification, NER, and QA tasks.
  Size: 110M params | Updated: 2024
```

---

## How to submit

### Option 1: Open an issue (easiest)
Use the [Add Resource template](https://github.com/richardy-lobo-sapan/awesome-nlp-id/issues/new/choose). Fill in the fields.

### Option 2: Pull request
1. Fork this repo
2. Create a branch: `git checkout -b add/resource-name`
3. Add your entry to the right section in `README.md`
4. Add a line to `CHANGELOG.md` under `## [Unreleased]`
5. Open a PR with a title like `Add: IndoSafety benchmark`

---

## CHANGELOG entry

Every PR must include a CHANGELOG.md update under `## [Unreleased]`:

```markdown
## [Unreleased]
### Added
- IndoSafety benchmark (Benchmarks — Safety & Culture)
```

Valid types: `Added`, `Updated`, `Deprecated`, `Removed`, `Fixed`

---

## Checklist before submitting

- [ ] Resource is publicly accessible
- [ ] Description is in plain English (not just a URL)
- [ ] License is noted
- [ ] Status badge is accurate
- [ ] Placed in the correct section
- [ ] CHANGELOG.md entry added
- [ ] Not a duplicate of an existing entry

---

*Questions? Open an issue tagged `question`. Be kind — this is a community resource.*
