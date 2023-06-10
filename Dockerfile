FROM ubuntu:latest
FROM python:3.8-slim-buster

RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

RUN npm install --no-audit -g serverless
RUN npm install --save-dev -g serverless-dotenv-plugin@latest
RUN npm install --save-dev -g serverless-python-requirements@latest
RUN npm install --save-dev -g serverless-offline@latest
