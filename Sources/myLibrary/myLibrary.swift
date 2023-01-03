#if os(Linux)
#if swift(>=5.3.2)
    public private(set) var swift_version = "Running Swift 5.3.2 or later on(Linux)"
#else
    public private(set) var swift_version = "Running Swift 5.3.2 or earlier on(Linux)"
#endif
// Code specific to Linux

//
#elseif os(macOS)
#if swift(>=5.3.2)
    public private(set) var swift_version = "Running Swift 5.3.2 or later on(macOS)"
#else
    public private(set) var swift_version = "Running Swift 5.3.2 or earlier on(macOS)"
#endif
// Code specific to macOS

//
#endif

#if canImport(UIKit)
#if swift(>=5.3.2)
    public private(set) var swift_version = "Running Swift 5.3.2 or later with canImport(UIKit)"
#else
    public private(set) var swift_version = "Running Swift 5.3.2 or earlier with canImport(UIKit)"
#endif
// Code specific to platforms where UIKit is available

//
#endif

public struct myLibrary {
    public private(set) var text = "Hello, myLibrary.swift!"
    public init() {
    print(text)
    }
}
