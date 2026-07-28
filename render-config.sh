#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
set -a
source .env
set +a
envsubst < config/config.yaml.template > config/config.yaml
echo "Rendered config/config.yaml"
