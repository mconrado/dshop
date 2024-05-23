FROM python:3.11

RUN apt-get update && apt-get install -y ncat

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requirements.txt

COPY . /code/

