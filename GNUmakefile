export TOOLCHAINS=swift
all: submodules package-update build-release test
submodules:
	git submodule update --init --recursive
package-update:
	swift package update
build-release:
	swift build -c release
test:
	@swift test
clean-build:
	rm -rf .build
	rm -rf Package.resolved
myLibrary: all
	swiftc Sources/myLibrary/myLibrary.swift
	chmod +x myLibrary
