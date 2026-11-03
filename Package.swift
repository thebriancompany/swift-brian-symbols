// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BrianSymbols",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [.library(name: "BrianSymbols", targets: ["BrianSymbols"])],
    targets: [
        .target(name: "BrianSymbols", resources: [.process("Resources")])
    ]
)
