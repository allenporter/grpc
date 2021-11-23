```
$ docker build -t cross-compile-armv7 docker/cross-compile-armv7/
$ docker run --rm cross-compile-armv7 > armv7
$ ./armv7 python3 setup.py bdist_wheel
$ ./armv7 ./tools/run_tests/artifacts/build_artifact_python.sh
```
