# Weak Judge Design -- Slides and Proofs

**Institution:** The University of Chicago | **Branch:** main | **Workflow:** Beamer-only

## Principles

- **Plan first** -- plan mode before non-trivial tasks; save to `quality_reports/plans/`
- **Verify after** -- compile and confirm output after every task
- **Beamer is authoritative** -- `.tex` is the single source of truth
- **Quality gates** -- 80 (commit) / 90 (PR) / 95 (excellence), advisory
- **Model routing** -- `/model opus` for planning + proofreading; `/model sonnet` for implementation
- **Token discipline** -- `/clear` when switching topics; keep context lean

Context: [MEMORY.md](MEMORY.md) | Plans: `quality_reports/plans/`

## LaTeX Build

```bash
cd Slides && TEXINPUTS=../Preambles:$TEXINPUTS xelatex -interaction=nonstopmode file.tex
BIBINPUTS=..:$BIBINPUTS bibtex file
TEXINPUTS=../Preambles:$TEXINPUTS xelatex -interaction=nonstopmode file.tex  # repeat 2x
```

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
| Beamer slides | `Slides/` | Awaiting source notes |
| Paper/notes | `Paper/` | Awaiting source notes |
