#!/bin/sh

set -e

#pod lib lint res/res.podspec
#$HOME/Software/ruby-200/bin/pod deintegrate >/dev/null
pod install --no-repo-update
xcodebuild -workspace test.xcworkspace -scheme test
