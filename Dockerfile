FROM ubuntu:latest
FROM python:3.8-slim-buster

RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location http://deb.nodesource.com/setup_18.x | bash
RUN apt-get update --fix-missing
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
RUN apt-get install --yes ghostscript
RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
RUN npm install --no-audit -g serverless
