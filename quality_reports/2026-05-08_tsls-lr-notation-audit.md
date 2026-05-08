# Notation Audit — Paper/tsls-lr-inference/

**Date:** 2026-05-08
**Scope:** Proposing alternatives for the two notation conflicts you flagged.

---

## Conflict 1: `\hat W` vs `w` vs `W_i`

### What is currently going on

Three distinct objects compete for the letter $W$:

| Symbol | Meaning | Defined |
|---|---|---|
| $W_i$ | Reduced-form residual: $Y_i = \delta_n' Z_i + W_i$ | Sec 2, eq. (2) |
| $\hat W$ | Rotated sample statistic: $\hat W \equiv \hat X' \hat\Sigma^{-1/2}\sqrt{n}\,\hat\tau$ | Sec 2, eq. between Lem EH and Lem STAT |
| $w$ | Population analog: $w \equiv X' \Sigma^{-1/2}\sqrt{n}\,\tau_n$ | same line |

Plus $W_j^2$ in Sec 4 / 5 / Appendix as the **components** of $\hat W$ — adding a fourth gloss on the symbol.

The conflict is two-fold:
1. $W_i$ vs $W$/$\hat W$ — same letter for residual and rotated test vector.
2. $\hat W$ vs $w$ — small/cap distinction for sample/population is the only signal, but the population vector $w$ also looks like the (lowercase) plural-component of the same object.

### Proposal: rename the rotated statistic to $\zeta / \hat\zeta$

| Old | New | Reading |
|---|---|---|
| $w$ | $\zeta$ | "rotated population vector" |
| $\hat W$ | $\hat\zeta$ | "rotated sample analog" |
| $W_j$ (component) | $\hat\zeta_j$ | one component of $\hat\zeta$ |
| $w_+, w_-$ | $\zeta_+, \zeta_-$ | sub-vectors associated with positive / negative eigenvalues |
| $w_j$ | $\zeta_j$ | population component |

**Why $\zeta$:**
- Unused anywhere in the manuscript.
- Common convention for "rotated/whitened" objects in IV asymptotics (used e.g. in Andrews–Mikusheva–Stock-style derivations).
- Lowercase/uppercase distinction is unnecessary because the hat carries the sample-vs-population signal.
- $W_i$ keeps its standard meaning as the reduced-form residual — no edits needed in equations (2), the appendix's $\E[\,\cdot\, W_i^2\,]$ block, etc.

The display in Section 2 becomes:
```
\hat\zeta \equiv \hat\Pi' \hat\Sigma^{-1/2}\sqrt{n}\,\hat\tau,
\qquad
\zeta   \equiv \Pi' \Sigma^{-1/2}\sqrt{n}\,\tau_n,
\qquad
\hat\zeta - \zeta \convd \mathfrak{N}(\mathbf{0}_{2d_Z},\boldsymbol{\iota}_{2d_Z}).
```
(With $\Pi$ for the eigenvector matrix — see Conflict 2 below.)

### Alternative if you dislike $\zeta$

- **$\psi / \hat\psi$** — also unused, also clean. Slightly less common than $\zeta$ for this role but perfectly legible.
- **$T / \hat T$** — too generic; reads as a generic test statistic and you already use `\textrm{TLR}`.
- **$\omega / \hat\omega$** — visually close to $w$, defeats the point.

**Recommendation:** $\zeta / \hat\zeta$.

---

## Conflict 2: $X$ vs $\hat X$ (eigenvector matrix)

### What is currently going on

| Symbol | Meaning | Defined |
|---|---|---|
| $X$ | Matrix of eigenvectors of $\Lambda(\beta_0)$ | Sec 2, line 123 |
| $\hat X$ | Sample eigenvector matrix | implicitly via $\hat\Lambda$ |

$X$ in econometrics almost universally means the design matrix or the regressor block. Even with covariates "projected off" upstream, the symbol carries strong priors. Worse, you don't seem to use it for anything else, but a referee will pause.

### Proposal: rename to $\Pi / \hat\Pi$

| Old | New |
|---|---|
| $X$ | $\Pi$ |
| $\hat X$ | $\hat\Pi$ |

**Why $\Pi$:**
- Standard linear-algebra notation for an orthogonal matrix in eigendecomposition (Golub–Van Loan, Horn–Johnson use $Q$ or $U$; econometrics drifts to $\Pi$ when $Q$ and $U$ are claimed).
- $Q$ is taken in this paper ($Q_+, Q_-, \hat Q_+$ in Sec 4 and the appendix — non-central chi-squared draws).
- $U$ is taken ($U_i$ is the model residual).
- $V$ is taken ($V_i$ is the first-stage residual).
- $\Pi$ doesn't conflict with anything in the manuscript and doesn't conflict with the standard IV reduced-form $\Pi$ in matrix form (you write the reduced form coefficient as $\delta_n$, not $\Pi$).
- The remark on line 151 — "by $X$ and $\hat X$ orthogonal, we have $\hat S \equiv \lVert\hat W\rVert^2/d_Z$" — translates cleanly to "$\Pi$ and $\hat\Pi$ orthogonal, hence $\hat S \equiv \lVert\hat\zeta\rVert^2/d_Z$". The orthogonality reads more naturally on $\Pi$ than on $X$.

### Alternative if you dislike $\Pi$

- **$Q / \hat Q$** — cleanest in linear algebra, but already in use in this paper. Don't.
- **$O / \hat O$** — "orthogonal" mnemonic, but $O$ reads as a zero in many fonts.
- **$\Phi / \hat\Phi$** — works, but $\Phi$ has a strong prior as a normal CDF; might re-introduce the same kind of clash you're escaping from.
- **$\mathbf{V} / \hat{\mathbf{V}}$** (bold $V$) — distinguished from scalar $V_i$ by boldness. Borderline; some readers will miss the boldface.

**Recommendation:** $\Pi / \hat\Pi$.

---

## Summary

| Old | New |
|---|---|
| $X$ (eigenvector matrix) | $\Pi$ |
| $\hat X$ | $\hat\Pi$ |
| $w$ (rotated population vector) | $\zeta$ |
| $\hat W$ (rotated sample vector) | $\hat\zeta$ |
| $W_j$ (component of rotated vector) | $\hat\zeta_j$ (sample) or $\zeta_j$ (population) |
| $w_+, w_-$ | $\zeta_+, \zeta_-$ |

**$W_i$ (reduced-form residual) is unchanged.** That's the symbol with the most-established meaning; let everything else move.

### Files touched if accepted

- `2-set-up-notation.tex` — definitions, the orthogonality remark, the limiting distribution display
- `4-results.tex` — every $\hat W_j$ in TLR formulas, the $w_j^2$ in the secular equation
- `5-extensions.tex` — the $W \sim \mathfrak{N}(w, \boldsymbol{\iota})$ proposition and surrounding text
- `A-appendix-1.tex` — every $W_j^2$ in proofs, $w$ in the secular-equation derivation
- Plus, on the eigenvector side: every $X / \hat X$ in §2 and the appendix derivation of $\Lambda(\beta_0)$.

I have **not** applied the rename — your call. Once approved, this is mechanical and I can do it in one pass with `replace_all` per symbol.
