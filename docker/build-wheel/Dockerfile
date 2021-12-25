FROM arm32v7/alpine:3.14.2
#FROM arm32v7/alpine:3.12

RUN apk add --no-cache python3 py3-pip
RUN apk add libstdc++ libc6-compat libatomic g++ python3-dev linux-headers git bash musl-dev
RUN python3 --version
RUN pip3 install wheel

WORKDIR /code
COPY ./example.py .
ENV REPO_ROOT=grpc
ENV RELEASE_TAG=v1.42.0
RUN git clone -b $RELEASE_TAG https://github.com/grpc/grpc $REPO_ROOT && cd $REPO_ROOT && git submodule update --init
RUN pip install -r grpc/requirements.txt
RUN cd $REPO_ROOT && python3 ./setup.py bdist_wheel 
RUN cd $REPO_ROOT && pip3 install google-cloud-pubsub

CMD python3 ./example.py

