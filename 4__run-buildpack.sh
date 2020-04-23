#!/usr/bin/env bash
set -ex
dir=`pwd`
docker run -v /tmp:/tmp \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $dir/dotnet3/SampleWebApi:/workspaces/SampleWebApi derrickchwong/cnb-dotnet-pack sh -c "pack build harbor.derrickwong.hk/apps/sample-web-api:latest --path /workspaces/SampleWebApi/published --builder cloudfoundry/cnb:cflinuxfs3 --buildpack /app/dotnet-core-cnb-cf ; docker login http://harbor.derrickwong.hk -u admin -p passssss ; docker push harbor.derrickwong.hk/apps/sample-web-api:latest"
