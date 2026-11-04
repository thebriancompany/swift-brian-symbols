// swift-tools-version: 6.4
import PackageDescription

let package = Package(
  name: "BrianSymbols",
  platforms: [
    .iOS(.v16),
    .macOS(.v13)
  ],
  products: [
    .library(
      name: "BrianSymbols",
      targets: ["BrianSymbols"]
    )
  ],
  targets: [
    .target(
      name: "BrianSymbols",
      resources: [.process("Resources")]
    )
  ]
)
