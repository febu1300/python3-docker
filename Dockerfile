FROM ubuntu:22.04
MAINTAINER Buruk "bur7746m@hs-coburg.de"

ENV DEBIAN_FRONTEND=noninteractive
LABEL af.hs-coburg.de.hiwi-python3-v2x="foo"

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev python3-pip \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip
ENV PIP_ROOT_USER_ACTION=ignore

WORKDIR /app
COPY requirements.txt requirements.txt
ENTRYPOINT ["python3"]
