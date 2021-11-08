#FROM arm32v7/alpine:3.14.2
FROM arm32v7/alpine:3.12

RUN apk add --no-cache python3 py3-pip
RUN apk add libstdc++ libc6-compat libatomic musl-dev
RUN python3 --version

WORKDIR /code
COPY requirements.txt .
COPY example.py .

ENV WHEEL=grpcio-1.41.0-cp38-cp38-linux_armv7l.whl
COPY ${WHEEL} .

RUN python3 --version

RUN pip3 install $WHEEL
RUN pip3 install google-cloud-pubsub

CMD python3 ./example.py
