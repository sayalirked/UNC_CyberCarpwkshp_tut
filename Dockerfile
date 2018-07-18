FROM ubuntu:18.04
MAINTAINER Sayali Kedari <kedarisa@mail.uc.edu>
LABEL Description "This is a Diamond test file"

RUN apt-get update
RUN apt-get install -y wget

RUN wget http://github.com/bbuchfink/diamond/releases/download/v0.9.22/diamond-linux64.tar.gz
RUN tar xzf diamond-linux64.tar.gz                       

ENV PATH=/:$PATH
CMD ["diamond"]
