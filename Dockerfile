FROM python:3.8
LABEL Carlos Souza Developer Ldt

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /dashproject
WORKDIR /dashproject
COPY ./dashproject /dashproject

RUN useradd -ms /bin/bash newuser
USER newuser