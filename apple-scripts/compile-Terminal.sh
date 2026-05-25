#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "compiling applescripts for OS X terminal..."
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/terminal-new-window.scpt" -x "${SCRIPT_DIR}/terminal/terminal-new-window.applescript"
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/terminal-current-window.scpt" -x "${SCRIPT_DIR}/terminal/terminal-current-window.applescript"
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/terminal-new-tab-default.scpt" -x "${SCRIPT_DIR}/terminal/terminal-new-tab-default.applescript"
