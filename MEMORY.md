# Project Memory

Corrections and learned facts that persist across sessions.
When a mistake is corrected, append a `[LEARN:category]` entry below.

---

<!-- Append new entries below. Most recent at bottom. -->

## Workflow Patterns

[LEARN:workflow] Requirements specification phase catches ambiguity before planning. Use spec-then-plan for complex/ambiguous tasks (>1 hour or >3 files).

[LEARN:workflow] Context survival before compression: (1) Update MEMORY.md, (2) Session log current, (3) Active plan saved to disk, (4) Open questions documented.

[LEARN:workflow] Plans, specs, and session logs must live on disk to survive compression and session boundaries.

## Design Philosophy

[LEARN:design] Framework-oriented > prescriptive rules. Provide templates users customize, not rigid requirements.

[LEARN:design] Motivation before formalism — every definition needs a motivating example or real-world question first.

## Framing

[LEARN:framing] "Quality gates" are advisory — enforced inside `/commit` skill only. Direct `git commit` bypasses review.

[LEARN:framing] The "orchestrator" is a pattern implemented by specific skills, not a runtime daemon. Plan approval does NOT auto-trigger the 6-step loop.

## Project-Specific

[LEARN:project] Beamer-only workflow. No Quarto/RevealJS. Slides + standalone paper as deliverables.

[LEARN:project] Token discipline: keep CLAUDE.md brief, suggest `/clear` on topic switches, avoid verbose outputs.
