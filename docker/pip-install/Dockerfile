FROM arm32v7/alpine:3.14.2
#FROM arm32v7/alpine:3.12

RUN apk add --no-cache python3 py3-pip
RUN apk add libstdc++ libc6-compat libatomic g++ python3-dev linux-headers
RUN pip3 install wheel

WORKDIR /code
COPY example.py .

RUN python3 --version

RUN pip3 install grpcio --no-binary ":all:" --log ./log
RUN pip3 install google-cloud-pubsub

CMD python3 ./example.py
