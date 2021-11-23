## From root dir
$ docker build -t build-wheel -f docker/build-wheel/Dockerfile .
$ docker run -it --rm --name build-wheel --entrypoint bash build-wheel 

## In container
$ cd grpc
$ python3 ./setup.py bdist_wheel

$ pip3 install google-cloud-pubsub
$ python3 ./example.py

