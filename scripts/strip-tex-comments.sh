#!/usr/bin/env bash
# strip-tex-comments.sh — emit a comment-stripped view of LaTeX files.
#
# Removes lines whose first non-whitespace character is `%`. Mid-line `%`
# (e.g. line-break suppressors) is left intact.
#
# Usage:
#   bash scripts/strip-tex-comments.sh path/to/file.tex            # filter to stdout
#   bash scripts/strip-tex-comments.sh f1.tex f2.tex f3.tex        # multi-file
#
# Multi-file output separates files with: ===== <path> =====
# This is the default view review skills should consume for files under Paper/**.
# See .claude/rules/manuscript-comment-policy.md.

set -euo pipefail

if [ $# -eq 0 ]; then
  echo "usage: $0 <tex-file> [<tex-file> ...]" >&2
  exit 2
fi

if [ $# -eq 1 ]; then
  sed '/^[[:space:]]*%/d' "$1"
else
  for f in "$@"; do
    printf '===== %s =====\n' "$f"
    sed '/^[[:space:]]*%/d' "$f"
    printf '\n'
  done
fi
