#!/bin/bash

# set -x
set -u

function do_lib_build() {
    mkdir -p ${BUILD}
    pushd ${BUILD}
    ${SWIFT_PATH} ../lucky.swift -emit-library -emit-module 
    popd
}

swiftcs=(\
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.10.0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.9.4.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.9.4.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.9.3.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.9.3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.9.2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode.9.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode_9.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode_9.0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
~/Applications/Xcode_8.3.3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc \
)

function do_main_build() {
    mkdir -p ${BUILD}
    pushd ${BUILD}
    echo "in ${BUILD}"

    for swiftc in ${swiftcs[@]}; do
        ${swiftc} ../main.swift -I . -L . -llucky
        case $? in
        0 ) echo "ok ${swiftc}" ;;
        * ) echo "ng ${swiftc}" ;;
        esac
    done
    popd
}

SWIFT_PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.10.2
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.10.1
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.10.0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.10.0
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.9.4.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.4.1
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.9.4.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.4
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.9.3.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.3.1
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.9.3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.3
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.9.2.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.2
export SDKROOT=~/Applications/Xcode.9.2.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode.9.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.1
export SDKROOT=~/Applications/Xcode.9.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode_9.0.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.0.1
export SDKROOT=~/Applications/Xcode_9.0.1.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode_9.0.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.9.0
export SDKROOT=~/Applications/Xcode_9.0.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
do_lib_build
do_main_build

SWIFT_PATH=~/Applications/Xcode_8.3.3.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc
BUILD=build.8.3.3
export SDKROOT=~/Applications/Xcode_8.3.3.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
do_lib_build
do_main_build
