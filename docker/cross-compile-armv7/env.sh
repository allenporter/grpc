#!/bin/bash -x 

export PYTHON=/opt/python/cp39-cp39/bin/python3
export PIP=/opt/python/cp39-cp39/bin/pip3
export ARTIFACTS_OUT=artifacts/python_linux_extra_armv7_cp39-cp39
export GRPC_SKIP_PIP_CYTHON_UPGRADE=TRUE
export GRPC_SKIP_TWINE_CHECK=TRUE

tools/run_tests/artifacts/build_artifact_python.sh
