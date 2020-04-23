#!/usr/bin/env bash
set -ex
wget https://github.com/cloudfoundry/dotnet-core-cnb/releases/download/v0.0.6/dotnet-core-cnb-cf-v0.0.6.zip
unzip dotnet-core-cnb-cf-v0.0.6.zip -d dotnet-core-cnb-cf

wget https://github.com/buildpacks/pack/releases/download/v0.10.0/pack-v0.10.0-linux.tgz
tar xvf pack-v0.10.0-linux.tgz
