#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SPEC_PATH="${SCRIPT_DIR}/batteryapi.yml"
CONFIG_PATH="${SCRIPT_DIR}/openapi-generator-config.yaml"
OUTPUT_DIR="${SCRIPT_DIR}/../Packages/battery-api/Sources/BatteryAPI"

mkdir -p "${OUTPUT_DIR}"

swift run --package-path "${SCRIPT_DIR}" swift-openapi-generator generate \
  --mode types --mode client \
  --output-directory "${OUTPUT_DIR}" \
  "${SPEC_PATH}"
