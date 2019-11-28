FROM ubuntu:18.04

RUN apt-get update -y 
RUN apt-get install -y python3 python3-pip python3-flask

COPY ./ ./AppSec4
WORKDIR ./AppSec4

RUN pip3 install -r requirements.txt 

EXPOSE 8080

RUN export FLASK_APP=app.py
CMD flask run
