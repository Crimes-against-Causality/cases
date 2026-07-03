# Crimes Against Causality — Cases

This repository holds the **content** for the *Crimes Against Causality* book:
the case studies plus the supporting narrative (`detectives.md`, `lore.md`).

It is the repository authors edit. The website backbone lives separately in
[`crimes-against-causality.github.io`](https://github.com/crimes-against-causality/crimes-against-causality.github.io),
which pulls this content at build time and publishes
**https://crimes-against-causality.github.io/**.

## Editing

- Edit a case: change `NN-slug/case-file*.md`.
- Add a case: create a new `NN-slug/` folder containing a `case-file*.md` with
  the front matter + sections described below.

Each `case-file*.md` starts with YAML front matter, then the usual sections.
The build splits the file at the **Answers** heading: everything above becomes
a chapter in *The Cases*, everything from *Answers* down becomes the matching
*Solution*.

```markdown
---
number: 7
slug: my-new-case
title: "My New Case"
detective: "Nora Nightingale"   # Wilbert Wright | Nora Nightingale
author: "Simon Munzert"         # who wrote it — colour-codes this case's title in the sidebar/ToC
difficulty: 2                   # 1 = Easy, 2 = Medium, 3 = Hard
topics: [Machine learning, Public health]
fallacies: [Base rate neglect]
summary: "One-line hook for the overview table."
---

# My New Case

## The crime scene
...
## Exhibit 1: ...
![caption](some-chart.png)
## The interrogation
1. ...
## Answers          # <- everything from here is the SOLUTION
1. ...
## What went wrong
## Background
## Sources
- ...
```

Local images are copied into the site and de-duplicated by case number; remote
(`http`) images are left as-is. **Do not commit copyrighted third-party PDFs or
the original published charts** — `*.pdf`, `*.docx`, and `*.jpeg` are
git-ignored for that reason.

Every fallacy you list under `fallacies:` should have a matching `## <name>`
entry in [`fallacies.md`](fallacies.md), the "Rogues' Gallery." Using a new
fallacy? Add its entry there too, and the build gives it a gallery page and
cross-links it to the case automatically.

## Publishing

Pushes to `main` reach the live site on their own: the website repository
rebuilds on a schedule (roughly every half hour) and pulls in the latest
content. To publish immediately rather than wait, run the **Publish book**
workflow in the [site repository](https://github.com/crimes-against-causality/crimes-against-causality.github.io/actions).
