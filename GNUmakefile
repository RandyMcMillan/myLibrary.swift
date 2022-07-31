export TOOLCHAINS=swift
all: submodules package-update build-release
submodules:
	git submodule update --init --recursive
package-update:
	swift package update
build-release:
	swift build -c release
build-tests:
	swift run --build-tests
clean-build:
	rm -rf .build
