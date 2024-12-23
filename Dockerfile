FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt install man -y
RUN yes | unminimize

WORKDIR /

COPY ./ /