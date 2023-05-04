FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y git

WORKDIR /root
RUN mkdir A && mkdir B && mkdir C && mkdir files
RUN git clone https://github.com/yungs9003/two-sum.git

WORKDIR /root/files
RUN touch a.txt b.txt c.txt

WORKDIR /root