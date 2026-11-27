#!/usr/bin/env bash
set -euo pipefail

mkdir -p app
if unzip -o public-infrastructure-monitoring.zip -d app; then
  :
  else
    unzip_status=$?
      if [ "$unzip_status" -ne 1 ]; then
          exit "$unzip_status"
            fi
            fi

            test -f app/package.json
            test -f app/package-lock.json
            test -f app/server.js
            test -f app/public/index.html
            cd app
            npm ci
