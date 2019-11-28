FROM ubuntu:18.04

RUN apt-get update -y 
RUN apt-get install -y python3 python3-pip python3-flask

COPY ./ ./AppSec4
WORKDIR ./AppSec4

RUN pip3 install -r requirements.txt 
RUN pip3 install python-dotenv

EXPOSE 8080

CMD flask run --host=0.0.0.0 --port=8080
