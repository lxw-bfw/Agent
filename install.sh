#!/usr/bin/env bash
set -euo pipefail

TARGET="all"
SCOPE="user"
SKILL_NAME="paid-ai-writing-sop"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      TARGET="${2:-}"
      shift 2
      ;;
    --scope)
      SCOPE="${2:-}"
      shift 2
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

case "$TARGET" in
  all|codex|claude|cursor) ;;
  *)
    echo "Invalid --target: $TARGET" >&2
    exit 1
    ;;
esac

case "$SCOPE" in
  user|project) ;;
  *)
    echo "Invalid --scope: $SCOPE" >&2
    exit 1
    ;;
esac

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_SKILL="$SCRIPT_DIR/Skills/$SKILL_NAME"
PROJECT_ROOT="$(pwd)"
HOME_DIR="${HOME}"

if [[ ! -f "$SOURCE_SKILL/SKILL.md" ]]; then
  echo "Missing source skill: $SOURCE_SKILL" >&2
  exit 1
fi

get_skills_root() {
  case "$1:$SCOPE" in
    codex:user) echo "$HOME_DIR/.agents/skills" ;;
    codex:project) echo "$PROJECT_ROOT/.agents/skills" ;;
    claude:user) echo "$HOME_DIR/.claude/skills" ;;
    claude:project) echo "$PROJECT_ROOT/.claude/skills" ;;
    cursor:user) echo "$HOME_DIR/.cursor/skills" ;;
    cursor:project) echo "$PROJECT_ROOT/.cursor/skills" ;;
    *)
      echo "Unsupported target/scope: $1 / $SCOPE" >&2
      exit 1
      ;;
  esac
}

get_validation_hint() {
  case "$1" in
    codex) echo '在 Codex 中打开 /skills 或显式提及 $paid-ai-writing-sop' ;;
    claude) echo '在 Claude Code 中输入 /paid-ai-writing-sop' ;;
    cursor) echo '在 Cursor Settings > Rules 中确认出现该 skill，并在聊天里输入 /paid-ai-writing-sop' ;;
  esac
}

RESULTS=()

install_target() {
  local platform="$1"
  local root
  local dest
  local backup=""

  root="$(get_skills_root "$platform")"
  dest="$root/$SKILL_NAME"

  mkdir -p "$root"

  if [[ -e "$dest" ]]; then
    backup="${dest}.backup-$(date +%Y%m%d-%H%M%S)"
    mv "$dest" "$backup"
  fi

  cp -R "$SOURCE_SKILL" "$dest"
  RESULTS+=("$platform|$dest|$backup|$(get_validation_hint "$platform")")
}

if [[ "$TARGET" == "all" ]]; then
  install_target codex
  install_target claude
  install_target cursor
else
  install_target "$TARGET"
fi

printf "\nInstalled skill pack: %s\n" "$SKILL_NAME"
printf "Scope: %s\n\n" "$SCOPE"

for row in "${RESULTS[@]}"; do
  IFS='|' read -r platform dest backup verify <<< "$row"
  printf "[%s]\n" "$platform"
  printf "  Installed: %s\n" "$dest"
  if [[ -n "$backup" ]]; then
    printf "  Backup:    %s\n" "$backup"
  fi
  printf "  Verify:    %s\n\n" "$verify"
done

if [[ "$SCOPE" == "project" ]]; then
  printf "Project scope uses the current working directory:\n"
  printf "  %s\n" "$PROJECT_ROOT"
fi
