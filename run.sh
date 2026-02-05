#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PORT="${1:-5500}"

cd "$ROOT_DIR"

printf 'Starting birthday site at http://localhost:%s/index.html\n' "$PORT"
printf 'Press Ctrl+C to stop.\n'

python -m http.server "$PORT"
