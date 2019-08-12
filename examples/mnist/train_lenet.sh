#!/usr/bin/env sh
set -e

SECONDS=0
./build/tools/caffe train --solver=examples/mnist/lenet_solver.prototxt $@
duration=$SECONDS
echo "$duration seconds elapsed."
