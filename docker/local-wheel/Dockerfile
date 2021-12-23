#FROM arm32v7/alpine:3.14.2  # for python 3.9
FROM arm32v7/alpine:3.12

ARG WHEEL
ENV PIP_WHEEL=${WHEEL}

RUN apk add --no-cache python3 py3-pip cython
RUN apk add libstdc++ libc6-compat libatomic musl-dev
RUN python3 --version

WORKDIR /code
COPY example.py .
COPY ${PIP_WHEEL} .

RUN pip3 install --upgrade pip
RUN python3 -m pip debug --verbose
RUN pip3 install $PIP_WHEEL
RUN pip3 install google-cloud-pubsub

RUN apk add libstdc++

CMD python3 ./example.py
