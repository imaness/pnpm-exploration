FROM ubuntu:18.04

COPY ./packages/package-b .

RUN apt-get update
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install -y nodejs

RUN npm install pnpm -g

WORKDIR /package/package-a

RUN pnpm install 