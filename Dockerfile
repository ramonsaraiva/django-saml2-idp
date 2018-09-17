FROM python:2.7

RUN apt-get update && apt-get install -y \
    libffi-dev libxmlsec1-dev libxmlsec1-openssl xmlsec1

ADD . /code
WORKDIR /code

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
