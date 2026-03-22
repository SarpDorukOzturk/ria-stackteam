#!/bin/bash
TEAM="${1:-all}"
SKILL="${2:-}"
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "RIA Stack Team Installer"
echo "Target: $CLAUDE_DIR"
echo ""

mkdir -p "$CLAUDE_DIR/agents" "$CLAUDE_DIR/skills" "$CLAUDE_DIR/commands"

install_skill() {
  local path="$1" name="$2"
  if [ -d "$path" ]; then
    mkdir -p "$CLAUDE_DIR/skills/$name"
    cp -r "$path"/. "$CLAUDE_DIR/skills/$name/"
    echo "  OK skill: $name"
  fi
}

install_agent() {
  local path="$1" name="$2"
  if [ -f "$path/agent.md" ]; then
    cp "$path/agent.md" "$CLAUDE_DIR/agents/$name.md"
    echo "  OK agent: $name"
  fi
  if [ -d "$path/skills" ]; then
    for s in "$path/skills"/*/; do
      install_skill "$s" "$(basename "$s")"
    done
  fi
}

install_team() {
  case "$1" in
    research)
      install_agent "$REPO_DIR/agents/POLYXA" "POLYXA"
      for s in deep-research content-research-writer article-extractor meeting-insights-analyzer; do
        install_skill "$REPO_DIR/skills/$s" "$s"
      done ;;
    strategy)
      for s in swot-analysis porters-five-forces pestle-analysis; do
        install_skill "$REPO_DIR/skills/$s" "$s"
      done ;;
    ops)
      install_skill "$REPO_DIR/skills/internal-comms" "internal-comms" ;;
    output)
      for s in docx pdf; do
        install_skill "$REPO_DIR/skills/$s" "$s"
      done ;;
    meta)
      install_skill "$REPO_DIR/skills/create-skill" "create-skill" ;;
    *)
      echo "Unknown team: $1"
      echo "Available: research, strategy, ops, output, meta" ;;
  esac
}

if [ -n "$SKILL" ]; then
  install_skill "$REPO_DIR/skills/$SKILL" "$SKILL"
elif [ "$TEAM" = "all" ]; then
  for t in research strategy ops output meta; do
    echo "Team: $t"
    install_team "$t"
  done
else
  echo "Team: $TEAM"
  install_team "$TEAM"
fi

echo ""
echo "Done."
