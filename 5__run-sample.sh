#!/usr/bin/env bash
set -ex
docker run -e PORT=5000 -p 5000:5000 simple-web-api
