---
paths:
  - "Paper/**/*.tex"
---

# Manuscript Comment Policy

Manuscripts under `Paper/**` may carry large amounts of commented-out alternative text — old phrasings, deferred derivations, alternative titles, structure notes. **These are notes, not production text.**

## Rule for review skills

When reviewing a `.tex` file under `Paper/**`, the agent MUST read the comment-stripped view, produced by:

```bash
bash scripts/strip-tex-comments.sh <file>
```

This applies to:
- `/proofread`
- `/review-paper` (all modes: default, `--adversarial`, `--peer`)
- `/seven-pass-review`
- `/respond-to-referees`
- `/verify-claims`
- `/audit-reproducibility`
- Any forked verifier or referee subagent reasoning about manuscript content

## What this means concretely

- **Do NOT report "missing" content** that exists only as commented-out text. The author has deferred it; flagging it as missing is noise.
- **Do NOT cite or paraphrase commented-out text** in review reports, summaries, or referee letters.
- **Do NOT treat commented math as live.** Equation numbering, definition labels, and citation references inside `%`-prefixed lines are inert.
- **Do NOT propose to "uncomment" text** unless explicitly asked. Reviewers comment on what's there, not what could be there.

## What this does NOT govern

- **Editing tools** (`Edit`, `Write`) read the raw file as usual. The rule only governs **review reasoning**.
- **Compilation** (`pdflatex` / `xelatex`) reads the raw file — that's how LaTeX comments work.
- **Slides** (`Slides/**`) and **Quarto** (`Quarto/**`) — those don't have this clutter pattern.

## The helper

`scripts/strip-tex-comments.sh`:
- Removes lines whose first non-whitespace character is `%`.
- Leaves mid-line `%` (line-break suppressors) untouched.
- Filter mode: prints stripped output to stdout.
- Multi-file mode: emits each file separated by `===== <path> =====` headers.
- Does NOT modify files in place.

## Cross-references

- `.claude/rules/content-invariants.md` — INV-5 carve-out (manuscripts may have own `bibliography.bib`); INV-9 records this policy.
- `.claude/rules/proofreading-protocol.md` — extended for `Paper/**`; review reports must use the stripped view.
- `.claude/rules/verification-protocol.md` — manuscript compile recipe.
