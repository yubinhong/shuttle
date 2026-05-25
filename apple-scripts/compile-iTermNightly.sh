#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "compiling applescripts for iTerm Nightly..."
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/iTerm2-nightly-new-window.scpt" -x "${SCRIPT_DIR}/iTermNightly/iTerm2-nightly-new-window.applescript"
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/iTerm2-nightly-current-window.scpt" -x "${SCRIPT_DIR}/iTermNightly/iTerm2-nightly-current-window.applescript"
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/iTerm2-nightly-new-tab-default.scpt" -x "${SCRIPT_DIR}/iTermNightly/iTerm2-nightly-new-tab-default.applescript"
