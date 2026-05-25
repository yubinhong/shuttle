#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "compiling applescripts for OS X virtual..."
osacompile -o "${PROJECT_DIR}/Shuttle/apple-scpt/virtual-with-screen.scpt" -x "${SCRIPT_DIR}/virtual/virtual-with-screen.applescript"
