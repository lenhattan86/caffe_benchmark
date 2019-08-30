#!/usr/bin/env sh
set -e

caffe train \
  --solver=examples/mnist/mnist_autoencoder_solver.prototxt $@
