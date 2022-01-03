#FROM arm32v7/alpine:3.12
FROM arm32v7/alpine:3.9

RUN apk add --no-cache python3 py3-pip
RUN python3 --version
RUN pip3 install wheel
RUN pip3 install --upgrade pip

WORKDIR /code
COPY example.py .

RUN pip3 install grpcio==1.31.0 --only-binary=":all:"
RUN pip3 install google-cloud-pubsub==2.1.0 "google-api-core<=1.31.2" --only-binary=":all:"

CMD python3 ./example.py
