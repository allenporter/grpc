FROM arm32v7/alpine:3.12

RUN apk add --no-cache python3 py3-pip
RUN python3 --version
RUN pip3 install wheel
RUN pip3 install --upgrade pip

WORKDIR /code
COPY example.py .

ENV INDEX_URL=https://wheels.home-assistant.io/alpine-3.12/armv7/

RUN python3 -m pip debug --verbose
RUN pip3 -v install grpcio==1.31.0 --only-binary=":all:" --no-index --find-links ${INDEX_URL}
RUN pip3 install google-cloud-pubsub==2.1.0 "google-api-core<=1.31.2" --only-binary=":all:" --no-index --find-links ${INDEX_URL}

RUN apk add libstdc++

CMD python3 ./example.py
