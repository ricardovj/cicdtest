#!/usr/bin/env bash
set -euo pipefail

ENV=${1:-staging}
SHA=${2:-local}

echo "Simulated deploy"
echo "Environment: $ENV"
echo "Artifact SHA: $SHA"
date

Here you could call a webhook or kubectl apply in a real setup
For demo purposes we just sleep briefly to simulate work
sleep 2
echo "Deploy complete"

Note: make this script executable:
chmod +x deploy.sh