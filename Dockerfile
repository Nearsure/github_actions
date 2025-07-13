FROM ubuntu:latest
FROM python:3.8-slim-bullseye

RUN apt-get update && apt-get install --yes curl gnupg lsb-release ca-certificates

RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install --yes nodejs
#RUN apt-get install --yes build-essential
#install docker
RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

RUN curl -fsSL https://get.docker.com | sh

RUN npm install --no-audit -g serverless@4.1.12
RUN npm install --no-audit -g serverless-plugin-datadog
ENTRYPOINT ["serverless"]

