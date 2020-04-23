FROM docker:latest
USER root
COPY ./pack /usr/local/bin/pack
COPY ./dotnet-core-cnb-cf /app/dotnet-core-cnb-cf
RUN chmod +x /usr/local/bin/pack
USER 1001
