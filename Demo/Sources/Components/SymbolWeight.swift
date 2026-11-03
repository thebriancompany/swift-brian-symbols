import SwiftUI

enum SymbolWeight: CaseIterable, Hashable, Sendable {
  case ultraLight
  case regular
  case black
}

extension SymbolWeight: Identifiable {
  var id: SymbolWeight { self }

  var title: String {
    switch self {
    case .ultraLight: "UltraLight"
    case .regular: "Regular"
    case .black: "Black"
    }
  }

  var fontWeight: Font.Weight {
    switch self {
    case .ultraLight: .ultraLight
    case .regular: .regular
    case .black: .black
    }
  }
}
