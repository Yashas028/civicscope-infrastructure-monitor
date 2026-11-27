#!/usr/bin/env bash
set -euo pipefail
mkdir -p app
unzip -o public-infrastructure-monitoring.zip -d app
cd app
npm ci
