FROM ruby:alpine-2.6.3 as base

apk add postgres

RUN mkdir /app

WORKDIR /app

ADD . /app

EXPOSE 80

RUN
