FROM arm32v7/alpine:3.14.2

RUN apk add --no-cache python3 py3-pip

RUN apk add build-base cmake linux-headers autoconf libexecinfo-dev python3-dev
# Which of these are not needed?
RUN apk add libffi-dev openssl-dev glib-dev automake
RUN pip3 install wheel

WORKDIR /code
COPY example.py .

ENV GRPC_BUILD_WITH_BORING_SSL_ASM=false
ENV GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=true
ENV GRPC_PYTHON_BUILD_WITH_CYTHON=true
ENV GRPC_PYTHON_DISABLE_LIBC_COMPATIBILITY=true
ENV GRPC_PYTHON_LDFLAGS="-lpthread -Wl,-wrap,memcpy -static-libgcc -lexecinfo"

RUN pip3 install Cython 
RUN pip3 install grpcio==1.43.0 --no-binary=":all:" --log ./log

# Example program to show that the wheel works
RUN pip3 install google-cloud-pubsub
CMD python3 ./example.py
