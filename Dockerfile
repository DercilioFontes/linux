FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y \
  unminimize \
  man \
  info \
  joe \
  less \
  file \
  finger \
  telnet \
  ftp \
  iputils-ping \
  vim
RUN yes | unminimize

WORKDIR /

COPY ./ /