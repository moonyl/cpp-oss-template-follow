#!/usr/bin/env bash

set -e

exports NUM_JOBS=1

mkdir build
cd build
cmake ..
make
bin/unitTests
