FROM ubuntu:latest
FROM python:3.8-slim-bullseye

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
    lsb-release && \
    install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc && \
    chmod a+r /etc/apt/keyrings/docker.asc && \
    echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian buster stable" \
    > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose-plugin \
    docker-ce-rootless-extras \
    docker-buildx-plugin

RUN npm install --no-audit -g serverless@4.1.12
RUN npm install --no-audit -g serverless-plugin-datadog
ENTRYPOINT ["serverless"]

