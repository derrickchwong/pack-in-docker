#!/usr/bin/env bash
set -ex
docker run -e PORT=5000 -p 5000:5000 harbor.derrickwong.hk/apps/sample-web-api:latest
