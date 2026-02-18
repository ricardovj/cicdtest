#!/usr/bin/env bash
set -euo pipefail

ENV=${1:-staging}
SHA=${2:-local}

echo "Simulated deploy"
echo "Environment: $ENV"
echo "Artifact SHA: $SHA"
date
sleep 2
echo "Deploy complete"
