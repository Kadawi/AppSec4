FROM ubuntu:18.04

PATH ./AppSec4

RUN apt-get update -y 
RUN apt-get install -y python-pip python-dev

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . /AppSec4

ENV FLASK_APP AppSec4/app.py

EXPOSE 8080

ENTRYPOINT [ "flask run" ]
