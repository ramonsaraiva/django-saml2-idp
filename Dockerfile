FROM python:2.7-alpine

RUN apk add --update \
    build-base libffi-dev openssl-dev \
    xmlsec xmlsec-dev \
  && rm -rf /var/cache/apk/*

ADD . /code
WORKDIR /code

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
