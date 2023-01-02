export TOOLCHAINS=swift
all: submodules package-update build-release
submodules:
	git submodule update --init --recursive
package-update:
	swift package update
build-release:
	swift build -c release
build-tests:
	swift Sources/my-library/my_library.swift
run-tests:
	@./my_library
clean-build:
	rm -rf .build
