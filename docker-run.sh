#!/usr/bin/env bash
set -ex

docker run -v /tmp:/tmp -v /var/run/docker.sock:/var/run/docker.sock -v ~/workspaces/dotnet3/SampleWebApi:/workspaces/SampleWebApi derrickchwong/cnb-pack-cli sh -c "pack build sample-web-api --path /workspaces/SampleWebApi/published --builder cloudfoundry/cnb:cflinuxfs3 --buildpack /app/dotnet-core-cnb-cf-v0.0.6 ; docker images sample-web-api"
