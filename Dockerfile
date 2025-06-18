FROM ubuntu:latest
FROM python:3.8-slim-buster

RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install --yes nodejs
#RUN apt-get install --yes build-essential
#install docker
RUN apt-get update && apt-get install --yes apt-transport-https ca-certificates software-properties-common lsb-release && \
    curl -fsSL https://get.docker.com | sh
RUN npm install --no-audit -g serverless@4.1.12
RUN npm install --no-audit -g serverless-plugin-datadog
ENTRYPOINT ["serverless"]

