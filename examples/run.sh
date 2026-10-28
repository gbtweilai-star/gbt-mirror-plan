#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mirror_plan info
PYTHONPATH=src python -m gbt_mirror_plan check --payload '{}'
PYTHONPATH=src python -m gbt_mirror_plan run   --payload '{}'
