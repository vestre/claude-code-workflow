# Proofread Report — Paper/tsls-lr-inference/

**Date:** 2026-05-08
**Scope:** All section files (1-introduction, 2-set-up-notation, 3-review-existing-methods, 4-results, 5-extensions, 7-conclusion) and the appendix proof file. Comment-stripped view used per `manuscript-comment-policy.md` (5-extensions and A-appendix-1 retained their comments by user request — only flagging issues in live text).
**Status:** Findings only — no edits applied yet (per `proofreading-protocol.md` Phase 1).

---

## A. Typos

| # | File | Line | Current | Proposed |
|---|------|------|---------|----------|
| A1 | `1-introduction.tex` | 23 | `insturment` | `instrument` |
| A2 | `1-introduction.tex` | 23 | `trestment` | `treatment` |
| A3 | `1-introduction.tex` | 49 | `eixstis` | `exists` |
| A4 | `2-set-up-notation.tex` | 134 | `hyptohesis` | `hypothesis` |
| A5 | `2-set-up-notation.tex` | 145 | `heterogeneoity` | `heterogeneity` |
| A6 | `2-set-up-notation.tex` | 163 | `diagonstic` | `diagnostic` |
| A7 | `4-results.tex` | 36 | `limiting distirbution` | `limiting distribution` |
| A8 | `4-results.tex` | 149 | `Jaccknife IV Wald test` | `Jackknife IV Wald test` |

## B. Grammar / Phrasing

| # | File | Line | Issue | Proposed |
|---|------|------|-------|----------|
| B1 | `1-introduction.tex` | 35 | `The only example of such a tests` (subject-verb / article mismatch) | `The only example of such a test` |
| B2 | `2-set-up-notation.tex` | 124 | `Define the rotated…` sentence starts mid-stride after a comma; the prior clause `Let \(X\) denote the matrix of eigenvectors of \(\Lambda(\beta_0)\),` has no terminator. | Replace comma with period: `…of \(\Lambda(\beta_0)\). Define the rotated…` |
| B3 | `2-set-up-notation.tex` | 154 | `\lVert \hat (\Sigma_{\hat\gamma}/n)^{-\frac{1}{2}}\hat\gamma\rVert^2` — the `\hat` before the open paren has no argument; renders as a stray hat | Drop the leading `\hat`: `\lVert (\Sigma_{\hat\gamma}/n)^{-\frac{1}{2}}\hat\gamma\rVert^2` (or use `(\hat\Sigma_{\hat\gamma}/n)` if a hat on `\Sigma` was intended for parity with the next two lines) |
| B4 | `4-results.tex` | 149 | `to obtain a notion of the degree to which the power of our test is on the level, and it is.` Awkward, unclear. | e.g., `…to confirm that our test is competitive with both, with no power loss in the strong-instrument limit.` |
| B5 | `5-extensions.tex` | 42 | `is given by.` (period before content) | `is given by:` |

## C. Math / Notation Inconsistencies

| # | File | Line | Issue | Proposed |
|---|------|------|-------|----------|
| C1 | `4-results.tex` | 88 | `\hat\rho` used for the consistent estimator of `\varrho`. Definition uses `\varrho`; the estimator should be `\hat\varrho` for parity. | `\hat\varrho \equiv \sum_{k=1}^{d_Z}\hat\kappa_+^{(k)}/(\hat\kappa_+^{(k)}+\lvert\hat\kappa_-^{(k)}\rvert)` |
| C2 | `4-results.tex` | 92, 95, 109, 112 | `c_{\varrho,1-\alpha}(\xi)` with `\hat\varrho` in the probability statement is fine; but line 92 says `fixing \((\rho,\xi)\)` — should be `\((\varrho,\xi)\)`. | `(\varrho,\xi)` |
| C3 | `2-set-up-notation.tex` | 89 | `\tau_n'\,\hat\Gamma(\beta_0)\,\tau_n = 0` — uses `\hat\Gamma` for what is a population statement (defining the null in terms of `\tau_n`). Should be `\Gamma(\beta_0)`. | `\tau_n'\,\Gamma(\beta_0)\,\tau_n = 0` |
| C4 | `5-extensions.tex` | 40–46 | Proposition WI body says `LR(\beta_0) \convd …` and references `W_j^2`, but the test statistic in Sec 4 is `TLR`, and `W_j` are *components of $W$*, while `w_j^2` appears in the constraint without the hat. Inconsistent: proposition mixes raw `LR` with `TLR` and uses `W` (sample limit) and `w` (population) inconsistently within the same display. | Use `TLR(\beta_0)` for the statistic; clarify that the sum-constraint involves the population vector `w`. |

## D. Cross-references

| # | File | Line | Issue | Proposed |
|---|------|------|-------|----------|
| D1 | `4-results.tex` | 42 & `5-extensions.tex` 41 | **Duplicate label `prop:wi`** — both Proposition TLR-LIM (Sec 4) and Proposition WI (Sec 5) declare `\label{prop:wi}`. | Rename Sec 4 to `prop:tlr-lim` and Sec 5 to `prop:wi-weak` (or whichever convention you prefer). |
| D2 | `3-review-existing-methods.tex` | 6, 31, 46 | Definition LEG, Lemma LEG-CTE, Lemma LEG-HTE all lack `\label{}`. They aren't currently referenced, but the convention established elsewhere is to label every theorem-like environment. | Add `\label{def:leg}`, `\label{lem:leg-cte}`, `\label{lem:leg-hte}`. |
| D3 | `4-results.tex` | 124 | Lemma COND lacks `\label{}`. | Add `\label{lem:cond}`. |
| D4 | `A-appendix-1.tex` | 4 | `\subsection{Proof of\label{lem:bnh}}` — `\label{}` placed inside `\subsection{}` *replaces* the title text. The subsection has no visible title. | Either `\subsection{Proof of \Cref{lem:bnh}}` (visible title; the `\label` is fine but should label the subsection itself, not the lemma) or `\subsection{Proof of \Cref{lem:bnh}}\label{sec:proof-eh}`. |
| D5 | `A-appendix-1.tex` | 56–59 | `\subsection{Proof of\Cref{prop:si}}` references `prop:si`, which is not declared anywhere in the manuscript (no `\label{prop:si}` in any section). Builds with `?` in the rendered title. | Either add the missing proposition (sufficient-statistic claim, presumably) or remove this stub. |
| D6 | `A-appendix-1.tex` | 96 | Active proof body references `\Cref{conj:binary-treat-limit}`; no such label exists. | Add the missing conjecture or remove the conditional clause. |
| D7 | All proof headings | — | `\subsection{Proof of\Cref{...}}` is missing a space between `of` and `\Cref` — renders as `Proof ofProposition 4.1`. | `\subsection{Proof of \Cref{...}}` (space). |

## E. Typesetting

| # | File | Line | Issue | Proposed |
|---|------|------|-------|----------|
| E1 | `5-extensions.tex` | 64 | Norwegian note in active text: `I mu2, nu2 osv resultat: Skriv in GMM estimator istedenfor TSLS …` Renders into the PDF. | Either move under a `%` comment or translate; my read is this is a TODO note for yourself — comment it out. |
| E2 | `4-results.tex` | 130–139 | Two `\clearpage` between `\begin{lemmap}{COND}` and the figure leaves a blank page in the rendered PDF. | One `\clearpage` is sufficient, or none. |
| E3 | `1-introduction.tex` | 4–32 | Structure outline + bullet-point notes are still active text. They render into the PDF as live prose. | Comment out (`%`) once the introduction body is drafted (Task #10 below will replace this). |

## F. Conclusion / Empirical Relevance stubs

- `7-conclusion.tex` is just `\begin{enumerate}\item Short summary\end{enumerate}` — a stub. Not an error, but flagging.
- `6-empirical-relevance.tex` is `Find some examples smth.` — currently `\input` is commented out in `main.tex` (good), so does not enter the build.

---

## Summary

- 8 typos
- 5 grammar/phrasing issues
- 4 math/notation inconsistencies
- 7 cross-reference / label issues (one duplicate label is the most critical)
- 3 typesetting issues

**Most critical (blocking-class):**
- D1 (duplicate `prop:wi` label — pdflatex emits a warning but the build still succeeds; both `\Cref{prop:wi}` references resolve to whichever is defined last)
- D5, D6 (`\Cref` to undeclared labels — render as `??` in PDF)
- C3 (population null stated with `\hat\Gamma`)

These should be addressed before the refactoring task (#11–12), since renaming/splitting will only obscure them.
