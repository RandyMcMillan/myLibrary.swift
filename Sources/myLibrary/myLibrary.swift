#if os(Linux)
// Code specific to Linux
#if swift(>=5.3.2)
    public private(set) var swift_version = "Running Swift 5.3.2 or later on(Linux)"
#else
    public private(set) var swift_version = "Running Swift earlier than 5.3.2 on(Linux)"
#endif
// End Code specific to Linux

#elseif os(macOS)
// Code specific to macOS
#if swift(>=5.3.2)
    public private(set) var swift_version = "Running Swift 5.3.2 or later on(macOS)"
#else
    public private(set) var swift_version = "Running Swift earlier than 5.3.2 on(macOS)"
#endif
// End Code specific to macOS
#endif

#if canImport(UIKit)
#if swift(>=5.3.2)
    public private(set) var swift_version = "Running Swift 5.3.2 or later with canImport(UIKit)"
#else
    public private(set) var swift_version = "Running Swift earlier than 5.3.2 with canImport(UIKit)"
#endif
// Code specific to platforms where UIKit is available
#endif

public struct myLibrary {
    public private(set) var text = "Hello, myLibrary.swift!"
    public init() {
    print(text)
    }
}
