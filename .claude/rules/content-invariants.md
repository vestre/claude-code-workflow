---
paths:
  - "Slides/**/*.tex"
  - "Paper/**/*.tex"
---

# Content Invariants

- **INV-5: Single bibliography for slides.** `Bibliography_base.bib` is the canonical bibliography for `Slides/**`. No per-lecture `.bib` files. Manuscripts under `Paper/**` may carry their own `bibliography.bib` (each paper is independently submittable, with its own citation set).
- **INV-7: Max 2 colored boxes per slide.** Overusing `keybox`, `definitionbox`, or callout environments creates "box fatigue." Two per slide maximum. (Slides only.)
- **INV-8: Motivation before formalism.** Every definition must be preceded by a motivating example, intuition, or real-world question. No unmotivated math.
- **INV-9: Manuscript comments are notes, not text.** Files under `Paper/**` may contain large blocks of commented-out alternative text. Review skills MUST read the comment-stripped view (`scripts/strip-tex-comments.sh`). See `manuscript-comment-policy.md`.
