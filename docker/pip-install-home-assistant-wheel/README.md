## From root dir
$ docker build -t build-wheel -f docker/build-wheel/Dockerfile .
$ docker run -it --rm --name build-wheel --entrypoint bash build-wheel 

## In container
$ pip3 install grpcio --no-binary ":all:" --log ./log
$ pip3 install google-cloud-pubsub
$ python3 ./example.py
