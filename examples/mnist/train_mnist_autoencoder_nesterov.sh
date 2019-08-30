#!/bin/bash
set -e

caffe train \
  --solver=examples/mnist/mnist_autoencoder_solver_nesterov.prototxt $@
