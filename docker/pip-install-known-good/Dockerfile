#FROM arm32v7/alpine:3.12
FROM arm32v7/alpine:3.9

RUN apk add --no-cache python3 py3-pip
#RUN apk add libstdc++ libc6-compat libatomic g++ python3-dev linux-headers
RUN python3 --version
RUN pip3 install wheel

WORKDIR /code
COPY example.py .

RUN pip3 install grpcio==1.31.0 google-cloud-pubsub --only-binary=":all:"

CMD python3 ./example.py
