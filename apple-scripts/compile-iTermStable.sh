#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "compiling applescripts for iTerm Stable..."
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/iTerm2-stable-new-window.scpt" -x "${SCRIPT_DIR}/iTermStable/iTerm2-stable-new-window.applescript"
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/iTerm2-stable-current-window.scpt" -x "${SCRIPT_DIR}/iTermStable/iTerm2-stable-current-window.applescript"
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/iTerm2-stable-new-tab-default.scpt" -x "${SCRIPT_DIR}/iTermStable/iTerm2-stable-new-tab-default.applescript"
