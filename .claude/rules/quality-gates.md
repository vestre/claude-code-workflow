---
paths:
  - "Slides/**/*.tex"
  - "Paper/**/*.tex"
---

# Quality Review & Scoring

> **Framing:** Thresholds are **advisory at the harness level**. The `/commit` skill runs `quality_score.py` and halts on failure until the user fixes or explicitly overrides.

## Thresholds

- **80/100 = Commit** -- good enough to save
- **90/100 = PR** -- ready for deployment
- **95/100 = Excellence** -- aspirational

## Beamer Slides (.tex)

| Severity | Issue | Deduction |
|----------|-------|-----------|
| Critical | pdflatex compilation failure | -100 |
| Critical | Undefined citation | -15 |
| Critical | Overfull hbox > 10pt | -10 |

## Manuscripts (`Paper/**/*.tex`)

| Severity | Issue | Deduction |
|----------|-------|-----------|
| Critical | pdflatex compilation failure | -100 |
| Critical | Undefined citation | -15 |
| Major    | Unresolved `??` cross-reference | -5 |

Overfull-hbox is not penalized for manuscripts (no slide-size constraint).

## Enforcement (by the /commit skill only)

- **Score < 80:** Halt within `/commit`. List blocking issues. User may override with an explicit reason.
- **Score < 90:** Allow commit, warn. List recommendations.
