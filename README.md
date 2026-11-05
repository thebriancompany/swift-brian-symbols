![Cover](docs/assets/cover.webp)

# Brian Symbols

**English** · [한국어](README.ko.md)

A Swift package providing custom SF Symbols.
The package manages assets and their public names. See the [asset catalog and specifications](docs/symbol-assets.md) for available symbols.

## Installation

- iOS 16+ / macOS 13+
- Swift 6.4+ to build the package

```swift
.package(url: "https://github.com/thebriancompany/swift-brian-symbols.git", exact: "0.6.0")
```

## Usage

```swift
import SwiftUI
import BrianSymbols

Image(brianSymbol: .house)
    .symbolRenderingMode(.monochrome)
    .foregroundStyle(.primary)
    .font(.system(size: 24, weight: .regular))
    .imageScale(.small)
    .frame(width: 24, height: 24)

Image(brianSymbol: .houseFill)
```

- `Image(brianSymbol:)` loads assets from the package resource bundle.
- To load assets directly in UIKit or AppKit, use `BrianSymbol.resourceBundle` and the symbol’s `rawValue`.

For color symbol usage, see the [color folder example](docs/symbol-authoring.md#using-the-color-folder).

## Demo

The demo app requires macOS 14+.
Open [BrianSymbolsDemo.xcworkspace](Demo/BrianSymbolsDemo.xcworkspace) to explore the symbols.

![Demo-Cover](docs/assets/demo-cover.png)

## Documentation

The README is available in English and Korean. All other documentation is in English.

- [Asset catalog and specifications](docs/symbol-assets.md)
- [Shapes and naming conventions](docs/symbol-naming.md)
- [Symbol authoring and registration](docs/symbol-authoring.md)
- [Asset pull requests](docs/asset-pull-requests.md)
- [Sizing and alignment](docs/symbol-sizing.md)
