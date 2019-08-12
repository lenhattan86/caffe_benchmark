#!/usr/bin/env sh
set -e

start=$(date +%Y%m%d%H%M%S);
caffe train --solver=examples/mnist/lenet_solver_cpu.prototxt $@
end=$(date +%Y%m%d%H%M%S);
elapsed=$(($end-$start));
echo "============================="
echo "$elapsed seconds"
