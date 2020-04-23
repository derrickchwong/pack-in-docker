#!/usr/bin/env bash
set -ex
dir=`pwd`
docker run -v /tmp:/tmp \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $dir/dotnet3/SampleWebApi:/workspaces/SampleWebApi derrickchwong/cnb-dotnet-pack sh -c "pack build sample-web-api --path /workspaces/SampleWebApi/published --builder cloudfoundry/cnb:cflinuxfs3 --buildpack /app/dotnet-core-cnb-cf ; docker images sample-web-api"
