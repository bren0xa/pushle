#!/usr/bin/env bash
set -e
set -x
git submodule update --init --recursive
# ./vendor/vcpkg/bootstrap-vcpkg.sh -disableMetrics
# ./vendor/vcpkg/vcpkg install
cmake -B build -G "Ninja" . -DCMAKE_BUILD_TYPE=Debug
cmake --build build
