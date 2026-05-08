# Weak Judge Design -- Slides and Proofs

**Institution:** The University of Chicago | **Branch:** main | **Workflow:** Beamer + manuscript (LaTeX)

## Principles

- **Plan first** -- plan mode before non-trivial tasks; save to `quality_reports/plans/`
- **Verify after** -- compile and confirm output after every task
- **Beamer is authoritative** -- `.tex` is the single source of truth
- **Quality gates** -- 80 (commit) / 90 (PR) / 95 (excellence), advisory
- **Model routing** -- `/model opus` for planning + proofreading; `/model sonnet` for implementation
- **Token discipline** -- `/clear` when switching topics; keep context lean

Context: [MEMORY.md](MEMORY.md) | Plans: `quality_reports/plans/`

## LaTeX Build

### Slides

Each slide deck is self-contained in `Slides/<deck-name>/` (includes its own `miscstyle.sty`).
Aux files go to `temp/` subfolder. Compile with **pdflatex**:

```bash
cd Slides/<deck-name>
pdflatex -interaction=nonstopmode -output-directory=temp <deck-name>.tex
bibtex temp/<deck-name>
pdflatex -interaction=nonstopmode -output-directory=temp <deck-name>.tex  # repeat 2x
cp temp/<deck-name>.pdf .
```

### Manuscripts

Each paper is self-contained in `Paper/<paper-name>/` (own `write-style.sty` + `bibliography.bib`).
Compile with **pdflatex** (3 passes + bibtex):

```bash
cd Paper/<paper-name>
pdflatex -interaction=nonstopmode main.tex
# the TSLS-LR paper uses `bibunits`, so each unit gets its own bibtex pass:
bibtex bu1
bibtex bu2
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```

If a future paper uses a single bibliography (no `bibunits`), replace the `bu1`/`bu2` lines with `bibtex main`.

**Comment policy:** manuscripts may carry large blocks of commented-out alternative text. Review skills must read the comment-stripped view via `scripts/strip-tex-comments.sh`. See `.claude/rules/manuscript-comment-policy.md`.

## Key Skills

| Command | Purpose |
|---------|---------|
| `/compile-latex` | 3-pass XeLaTeX + bibtex |
| `/proofread` | Grammar, typos, overflow |
| `/visual-audit` | Layout check |
| `/review-paper` | Manuscript review |
| `/seven-pass-review` | Adversarial manuscript review |
| `/verify-claims` | Fact-check (CoVe) |
| `/commit` | Stage, commit, PR |

Full skill list: `.claude/skills/*/SKILL.md`

## Beamer Environments

| Environment | Effect |
| --- | --- |
| `keybox` | Gold background -- key results |
| `definitionbox[Title]` | Blue-bordered -- formal definitions |

## Project State

| Deliverable | Location | Status |
| --- | --- | --- |
| Beamer slides | `Slides/260501-magne-alex-group/` | Active |
| TSLS-LR inference paper | `Paper/tsls-lr-inference/` | Draft (reorganized + comment-stripped 2026-05-08); upload preserved at `input/new-manuscript/` |
| JIVE-bias paper | `Paper/jive-bias/` (not yet created) | Split off from prior draft; not yet started |
