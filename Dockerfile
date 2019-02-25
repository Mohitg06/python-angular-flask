FROM alpine:3.5
RUN apk add --update python py-pip
COPY Pipfile /src/Pipfile
RUN pip install -r /src/Pipfile
COPY Pipfile Pipfile
RUN pip install -r Pipfile
COPY entities /src/entities
COPY main.py /src
COPY __init.py /src
COPY bootstrap.sh /src
CMD sh /src/bootstrap.sh