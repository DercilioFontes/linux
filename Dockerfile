FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt install unminimize -y
RUN apt install man -y
RUN apt install info -y
RUN apt install joe -y
RUN yes | unminimize

WORKDIR /

COPY ./ /