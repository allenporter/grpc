FROM arm32v7/python:3.9-alpine

#RUN apt-get install libstdc++ libc6-compat libatomic g++ python3-dev linux-headers
RUN pip3 install wheel

WORKDIR /code
COPY example.py .

RUN python3 --version

RUN pip3 install grpcio --only-binary ":all:" --log ./log
RUN pip3 install google-cloud-pubsub

CMD python3 ./example.py
