#FROM arm32v7/alpine:3.14.2
FROM arm32v7/alpine:3.12

RUN apk add --no-cache python3 py3-pip
RUN apk add libstdc++ libc6-compat libatomic g++ python3-dev linux-headers
RUN python3 --version
RUN pip3 install wheel

WORKDIR /code
COPY docker/pip-install/example.py .
ADD / grpc-src

#RUN python3 --version

#RUN pip3 install $WHEEL
#RUN pip3 install google-cloud-pubsub

CMD python3 ./example.py
