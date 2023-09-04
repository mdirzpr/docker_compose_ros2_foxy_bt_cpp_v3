#!/bin/bash

mkdir build
cd build
cmake ..
make

echo ---- Running a simple example using BehaviorTree_CPP library
./bt_demo
