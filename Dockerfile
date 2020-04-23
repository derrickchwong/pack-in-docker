FROM docker:latest
USER root
COPY ./pack /usr/local/bin/pack
COPY ./dotnet-core-cnb-cf-v0.0.6 /app/dotnet-core-cnb-cf-v0.0.6

RUN chmod +x /usr/local/bin/pack
USER 1001
