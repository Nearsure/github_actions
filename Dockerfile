FROM ubuntu:latest
FROM python:3.8-slim-buster

RUN apt-get update
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install --yes nodejs
#RUN apt-get install --yes build-essential
RUN npm install --no-audit -g serverless@3.38.0
