#!/bin/bash

ABI=x86

ANDROID_NDK=$HOME/Android/Sdk/ndk/23.0.7123448
TOOL_CHAIN=${ANDROID_NDK}/build/cmake/android.toolchain.cmake
CMAKE=$HOME/Android/Sdk/cmake/3.18.1/bin/cmake

mkdir -p ${ABI}
cd ${ABI}

${CMAKE} ../../spdlog -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 \
-DANDROID_ABI=${ABI} -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN} -DCMAKE_CXX_FLAGS=-DSPDLOG_COMPLIED_LIB

${CMAKE} --build .
