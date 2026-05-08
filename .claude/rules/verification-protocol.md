---
paths:
  - "Slides/**/*.tex"
  - "Paper/**/*.tex"
---

# Task Completion Verification Protocol

**At the end of EVERY task, Claude MUST verify the output works correctly.**

## For LaTeX/Beamer Slides:
1. Compile with pdflatex and check for errors
2. Open the PDF to verify figures render (`open` on macOS)
3. Check for overfull hbox warnings
4. **Aux file location**: Use `-output-directory=temp` per CLAUDE.md

## For LaTeX manuscripts (`Paper/<paper-name>/`):
From the paper directory, run a 3-pass + bibtex build. Note: papers using the `bibunits` package (like `tsls-lr-inference`) need a separate bibtex pass per unit (`bu1`, `bu2`, …); papers with a single `\bibliography` use `bibtex main`.
```bash
pdflatex -interaction=nonstopmode main.tex
# pick ONE of:
bibtex bu1 && bibtex bu2          # bibunits flavor (one per unit)
# bibtex main                      # single-bibliography flavor
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```
Aux files are written next to the source by default; the user may direct them to a `temp/` subfolder if they prefer. Overfull-hbox warnings are not blocking for manuscripts (no slide-size constraint). Duplicate-label and undefined-`\Cref` warnings ARE worth surfacing — they indicate stale labels or proofs that haven't been written yet.

## Common Pitfalls:
- **Assuming success**: Always verify output files exist AND contain correct content
- **Bibliography failures**: A `bibtex` warning about a missing key surfaces as `??` in the rendered PDF — check the log

## Verification Checklist:
```
[ ] Output file created successfully
[ ] No compilation/render errors
[ ] Opened in viewer to confirm visual appearance
[ ] Reported results to user
```
