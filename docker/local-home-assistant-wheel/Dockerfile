FROM homeassistant/armv7-base-python:3.8-alpine3.12

ARG WHEEL
ENV PIP_WHEEL=${WHEEL}

RUN python3 --version

WORKDIR /code
COPY example.py .
COPY ${PIP_WHEEL} .

RUN pip3 install --upgrade pip
RUN python3 -m pip debug --verbose
RUN pip3 install $PIP_WHEEL
RUN pip3 install google-cloud-pubsub

CMD python3 ./example.py
