#!/bin/bash
# Run this script from inside your cloned repo folder
# Usage: bash push.sh

echo "📦 Copying files into repo..."

# Copy all files (run this from the folder CONTAINING awesome-nlp-id/)
# Adjust paths if needed

cp awesome-nlp-id/README.md ./README.md
cp awesome-nlp-id/START-HERE.md ./START-HERE.md
cp awesome-nlp-id/ROADMAP.md ./ROADMAP.md
cp awesome-nlp-id/CONTRIBUTING.md ./CONTRIBUTING.md
cp awesome-nlp-id/CHANGELOG.md ./CHANGELOG.md
cp awesome-nlp-id/LICENSE ./LICENSE

mkdir -p .github/workflows
mkdir -p .github/ISSUE_TEMPLATE

cp awesome-nlp-id/.github/workflows/update-badge.yml .github/workflows/update-badge.yml
cp awesome-nlp-id/.github/ISSUE_TEMPLATE/add-resource.md .github/ISSUE_TEMPLATE/add-resource.md
cp awesome-nlp-id/.github/pull_request_template.md .github/pull_request_template.md

echo "✅ Files copied!"
echo ""
echo "Now run:"
echo "  git add ."
echo "  git commit -m '🎉 Initial release v2025.05 — beginner-first Indonesian NLP guide'"
echo "  git push origin main"
