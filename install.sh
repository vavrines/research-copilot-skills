#!/usr/bin/env bash
# Install the research-copilot skills for Claude Code and/or Codex (and any
# agent reading ~/.agents/skills). Creates symlinks so updates via
# `git pull` take effect immediately.
#
# The four level-1 skills reference ../shared/*.md via relative paths, so
# "shared" is symlinked alongside them into each target directory.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$REPO_DIR/skills"
SKILLS=(paper-master proposal-master research-architect slide-storyteller shared)

for s in "${SKILLS[@]}"; do
  if [[ ! -d "$SKILLS_DIR/$s" ]]; then
    echo "error: $SKILLS_DIR/$s not found — run this script from inside the repo." >&2
    exit 1
  fi
done

install_for() {
  local dir="$1"
  mkdir -p "$dir"
  for s in "${SKILLS[@]}"; do
    local dest="$dir/$s"
    if [[ -e "$dest" && ! -L "$dest" ]]; then
      echo "skip: $dest exists and is not a symlink — remove it manually to replace it."
      continue
    fi
    ln -sfn "$SKILLS_DIR/$s" "$dest"
    echo "installed: $dest -> $SKILLS_DIR/$s"
  done
}

TARGETS=()
if [[ $# -eq 0 ]]; then
  TARGETS=(claude codex agents)
else
  TARGETS=("$@")
fi

for t in "${TARGETS[@]}"; do
  case "$t" in
    claude) install_for "$HOME/.claude/skills" ;;
    codex)  install_for "$HOME/.codex/skills" ;;
    agents) install_for "$HOME/.agents/skills" ;;
    *) echo "unknown target: $t (valid: claude, codex, agents)" >&2; exit 1 ;;
  esac
done

echo
echo "Done. Restart your agent (or start a new session) to pick up the skills."
