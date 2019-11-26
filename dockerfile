FROM ubuntu:18.04.3


RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY requirements.txt

RUN pip install -r requirements.txt

COPY . /AppSec4

ENTRYPOINT [ "python" ]

CMD [flask run]
