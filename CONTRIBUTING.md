# Contributing to Crimes Against Causality

This document describes how Simon and Dylan collaborate on adding and revising case studies for the book.

## Overview

We use a **pull request (PR) workflow** to ensure quality and enable async peer review. All content changes—new cases, case revisions, fallacy definitions—go through GitHub PRs before merging to `main`. This allows each author to review the other's work without blocking progress.

---

## Workflow

### 1. Create a Branch

For each case (new or revised), create a feature branch:

```bash
git checkout -b case/NN-slug
```

**Naming convention:** `case/NN-slug` where `NN` is the case number and `slug` is the URL-friendly name.

Examples:
- `case/06-cola-taste-new` (new case 06)
- `case/05-alcohol-mortality-revised` (revising case 05)

### 2. Make Changes

Edit the case file(s) in `case-studies/` and any supporting files (images, fallacy definitions, etc.).

**For new cases:**
- Place the markdown file at `case-studies/NN-slug/case-file-NN.md`
- Include YAML frontmatter: `number`, `slug`, `title`, `detective`, `author`, `difficulty`, `topics`, `fallacies`, `summary`
- Structure sections: "The crime scene" → "Exhibit N" → "The interrogation" → "Answers" → "What went wrong" → "Background" → "Sources"
- Add images to the same folder (e.g., `death-by-beat-chart.png`); the build script copies them to `book/cases/assets/`

**For revisions:**
- Edit the existing case file
- Keep the frontmatter fields identical (especially `number`, `slug`, `author`)

**For fallacy definitions:**
- Edit `cases/fallacies.md`
- Use `##` headings that match the fallacy tags in case files
- Keep entries short: "The con" (1–2 sentences) → explanation → "How to catch it"

### 3. Commit and Push

Commit your changes to the branch and push:

```bash
git add case-studies/ cases/fallacies.md # (or whatever changed)
git commit -m "Add case 06: Cola taste test"
git push -u origin case/NN-slug
```

**Commit message style:**
- Start with verb: "Add case 06…", "Revise case 05…", "Update fallacy definitions…"
- Keep it concise (one sentence is fine)
- No need to reference the PR number in the commit message

### 4. Open a Pull Request

On GitHub, create a PR with:

**Title:** `Case NN: Title` or `Revise case NN: Title`

**Description:** A brief note about what's new or changed:
```
## Summary

New case: "Cola Taste Test" — investigates Simpson's paradox in product preference studies.

## Fallacies

- Simpson's paradox
- Reference group bias
```

Or for revisions:

```
## Summary

Revised case 05 "Alcohol Mortality" — reworked the interrogation flow and updated "What went wrong" based on feedback.

## Changes

- Q1–Q3: simplified language
- Added clarification on confounding in "What went wrong"
```

### 5. Review and Feedback

The other author reviews the PR:

- **Read the case** through the PR (GitHub's markdown rendering is fine)
- **Leave comments** on specific lines for typos, questions, or suggestions
- **Use GitHub Suggestions** for copy edits (author can accept directly)
- **Request changes** only if something needs substantive rework


### 6. Address Feedback

The author responds:

- **For suggestions:** Accept or dismiss in GitHub
- **For comments:** Reply with a fix, discussion, or new commit
- **For substantive changes:** Create a *new commit* in the same branch (do NOT amend or force-push; the reviewer needs to see the conversation trail)

After making changes, re-request review from the other author.

### 7. Merge

Once approved:

1. **Reviewer approves** the PR
2. **Merger** (either author) clicks "Merge pull request" on main
3. **GitHub Actions** automatically rebuilds the site (~2 minutes)
4. **Site updates live** with the new case or revision

**No manual deploy needed.** Merging to `main` triggers the build; changes appear at [crimes-against-causality.github.io](https://crimes-against-causality.github.io) shortly after.

---

## Case Content Guidelines

### Interrogation Style

Cases should escalate in difficulty:

1. **Factual, yes/no questions** (warm-up) — e.g., "Did the study randomly assign plant groups?"
2. **Interpretation questions** — e.g., "What does the spike in the treated plants' growth tell us?"
3. **Fundamental flaw** (open-ended) — e.g., "What's the key mistake in Bram's logic?"

Keep **Answers** SHORT (1–3 sentences). Don't pre-reveal the conclusion; let readers sit with the question.

The **"What went wrong"** section is where the full explanation lives.

### Frontmatter Fields

```yaml
number: 6
slug: cola-taste-test
title: The Cola Conundrum
detective: "Jane Doe"
author: Dylan  # or Simon
difficulty: Intermediate
topics:
  - marketing
  - product testing
fallacies:
  - Simpson's paradox
  - Reference group bias
summary: "A soft-drink maker's taste test shows a new formula winning in every age group, yet losing overall."
```

- `fallacies:` tags must exist in `cases/fallacies.md` (the build system warns if they don't)
- `difficulty:` can be "Beginner", "Intermediate", or "Advanced" (used in the appendix index)
- `topics:` are free-form tags for the appendix; keep them consistent across cases

### Exhibit Headings

Use `## Exhibit N: Description` in the case file. The build script converts these to bold inline labels, not separate heading levels in the table of contents.

```markdown
## Exhibit 1: The taste-test survey

[description and chart]

## Exhibit 2: The age breakdown

[more data]
```

### Images

- Save images in the case folder: `case-studies/NN-slug/image-name.png`
- Reference them in markdown as relative paths: `![Alt text](image-name.png)`
- The build script copies them to `book/cases/assets/` (no action needed)

### Fallacy Links

To link to the Rogues' Gallery:

```markdown
[Simpson's paradox](../compendium/simpson-s-paradox.qmd)
```

The fallacy slug is the lowercase, hyphenated version of the heading from `cases/fallacies.md` — every run of non-alphanumeric characters (including apostrophes) becomes a single hyphen, so "Simpson's paradox" slugs to `simpson-s-paradox`, not `simpsons-paradox`.

---

## Local Preview

To see your changes locally before opening a PR:

```bash
cd /Users/simonmunzert/Documents/github/crimes-against-causality/crimes-against-causality.github.io
make preview
```

This builds the site, starts a local web server on `localhost:4500`, and opens Firefox.

Or use the bash alias:

```bash
book-preview
```

(Set up with: `alias book-preview='/Users/simonmunzert/Documents/github/crimes-against-causality/preview.sh'`)

---

## Fallacy Management

The fallacy definitions in `cases/fallacies.md` are the single source of truth. When you add a new fallacy to a case:

1. **Add the definition to `cases/fallacies.md`** (if it doesn't exist)
2. **Use the heading as your `fallacies:` tag** in the case frontmatter
3. **Link to it** from the case text with standard markdown: `[Fallacy name](../compendium/slug.qmd)`

The build system auto-generates the Rogues' Gallery pages (`book/compendium/slug.qmd`) and cross-reference table based on these.

---

## Troubleshooting

### Build fails with "fallacy not found"

Your case's `fallacies:` tags don't match headings in `cases/fallacies.md`. Check spelling and capitalization.

### Local preview doesn't update when I edit a case

The Quarto preview watches the `book/` directory, not the source `case-studies/`. After editing a case file, run the build again:

```bash
cd /path/to/site/repo
make render
```

Then refresh your browser.

### Images don't show up locally

Make sure you ran `make render` (not just `make preview`). The build script copies images; Quarto's preview server watches the already-rendered directory.

### How do I update the site after merging?

You don't. GitHub Actions does it automatically when you merge to `main`. Check the "Actions" tab on the site repo to see the build progress (~2 minutes).

---

## Questions?

Refer to:
- **For case structure:** See existing cases in `case-studies/` (especially cases 06, 07, 09 as exemplars of interrogation style)
- **For fallacy definitions:** See `cases/fallacies.md`
- **For book config:** See `crimes-against-causality.github.io/book/_quarto.yml` (auto-generated)
- **For build logic:** See `crimes-against-causality.github.io/scripts/build-book.R`
