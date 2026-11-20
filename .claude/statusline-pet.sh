#!/usr/bin/env bash
# Status line pet for Claude Code. Claude Code pipes session JSON to stdin
# and re-runs this script regularly, so the frame follows the clock.
input=$(cat)

NAME="${CLAUDE_PET_NAME:-Mochi}"

frames=("(=^･ω･^=)" "(=^-ω-^=)" "(=^･ω･^=)" "(=^>ω<^=)" "(=^･ω･^=)" "(=^-ω-^=)")
say=("meow~" "zzz..." "học bài đi nè!" "debug thôi nào" "Flink ngon lắm" "IELTS 7.0+!" "uống nước chưa?" "mình tự hào về bạn")

t=$(date +%s)
frame=${frames[$(( t % ${#frames[@]} ))]}
line=${say[$(( (t / 20) % ${#say[@]} ))]}

model=""
if command -v jq >/dev/null 2>&1; then
  model=$(printf '%s' "$input" | jq -r '.model.display_name // empty' 2>/dev/null)
fi

printf '%s %s: %s' "$frame" "$NAME" "$line"
[ -n "$model" ] && printf ' | %s' "$model"
printf '\n'
