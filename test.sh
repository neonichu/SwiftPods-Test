#!/bin/sh

set -e

build() {
	xcodebuild -workspace 'iOS Example.xcworkspace' -scheme 'iOS Example' $1
}

git submodule update --init --recursive
pod install

build | xcpretty -c && exit ${PIPESTATUS[0]}

#TARGET_BUILD_DIR="`build -showBuildSettings|grep TARGET_BUILD_DIR|awk '{ print $3 }'`"
#codesign --verify --verbose