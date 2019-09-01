#!/bin/bash
if [ -z "$1" ]
then
	model="lenet"
else
	model="$1"
fi

if [ -z "$2" ]
then
	device="cpu"
else
	device="$2"
fi

SECONDS=0
if [ $model == "lenet" ]; then
    if [ $device == "cpu" ]; then
        caffe train --solver=examples/mnist/lenet_solver_$device.prototxt $@
    elif [ $device == "gpu" ]; then
        caffe train --solver=examples/mnist/lenet_solver.prototxt $@    
    else
        echo "unknown device"        
    fi 
elif [ $model == "cifar-10"]; then
    if [ $device == "cpu" ]; then
        caffe train --solver=examples/cifar10/cifar10_quick_solver_$device.prototxt $@
    elif [ $device == "gpu" ]; then
        caffe train --solver=examples/cifar10/cifar10_quick_solver.prototxt $@
    else
        echo "unknown device"        
    fi
else
    echo "$model does not exist"    
fi
duration=$SECONDS
echo "$duration seconds elapsed."