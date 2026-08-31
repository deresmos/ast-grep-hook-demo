#!/usr/bin/env bash
set -euo pipefail

if ! scan_output="$(ast-grep scan --config "${CLAUDE_PROJECT_DIR}/sgconfig.yml" "${CLAUDE_PROJECT_DIR}" 2>&1)"; then
  echo "$scan_output" >&2
  echo "" >&2
  echo "ast-grep のルール違反が見つかりました。上記の指摘を修正してください。" >&2
  exit 2
fi

exit 0
