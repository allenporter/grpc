FROM arm32v7/alpine:3.14.2
#FROM arm32v7/alpine:3.12

RUN apk add --no-cache python3 py3-pip cython
RUN apk add libstdc++ libc6-compat libatomic musl-dev
RUN python3 --version

WORKDIR /code
COPY example.py .

#ENV WHEEL=grpcio-1.43.0.dev0-cp39-cp39-linux_armv7l_musl.whl
#ENV WHEEL=grpcio-1.43.0.dev0-cp39-cp39-musllinux_1_0_armv7l.whl

#COPY ${WHEEL} .
COPY grpcio-1.43.0.dev0-cp39-cp39-linux_armv7l_musl.whl .
COPY grpcio-1.43.0.dev0-cp39-cp39-linux_armv7l.whl .
COPY grpcio-1.43.0.dev0-cp39-cp39-musllinux_1_0_armv7l.whl .

ENV WHEEL=grpcio-1.43.0.dev0-cp39-cp39-linux_armv7l.whl
RUN python3 --version
RUN pip3 install --upgrade pip
RUN python3 -m pip debug --verbose
RUN pip3 install $WHEEL
RUN pip3 install google-cloud-pubsub

CMD python3 ./example.py
