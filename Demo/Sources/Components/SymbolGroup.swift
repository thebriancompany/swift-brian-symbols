import SwiftUI
import BrianSymbols

enum SymbolGroup: String, CaseIterable, Identifiable {
  case all
  case line
  case fill

  var id: String { rawValue }

  var title: LocalizedStringKey {
    switch self {
    case .all: "All Symbols"
    case .line: "Line"
    case .fill: "Fill"
    }
  }

  var icon: BrianSymbol {
    switch self {
    case .all: .squareGrid2x2
    case .line: .square
    case .fill: .squareFill
    }
  }
}
