##!/bin/sh

xcrun xcodebuild docbuild \
	-scheme GivenWithLove \
	-destination 'generic/platform=iOS Simulator' \
	-derivedDataPath "$PWD/.derivedData"

xcrun docc process-archive transform-for-static-hosting \
	"$PWD/.derivedData/Build/Products/Debug-iphonesimulator/GivenWithLove.doccarchive" \
	--output-path ".docs" \
	--hosting-base-path "doctest" # required for GitHub Pages, not needed when deploying to Netlify, for example.