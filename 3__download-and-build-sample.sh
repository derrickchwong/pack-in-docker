#!/usr/bin/env bash
set -ex

mkdir dotnet3
git clone https://github.com/k8s-app/dotnet3.git dotnet3
cd dotnet3/SampleWebApi
dotnet new webapp -o SampleWebApi --no-https --force
dotnet publish SampleWebApi --self-contained=false --runtime=linux-x64 --output published
