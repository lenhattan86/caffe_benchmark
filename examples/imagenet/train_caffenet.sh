#!/usr/bin/env sh
set -e

caffe train \
    --solver=models/bvlc_reference_caffenet/solver.prototxt $@
