import SwiftUI
import BrianSymbols

enum SymbolGroup: String, CaseIterable, Identifiable {
  case all
  case line
  case fill
  case color

  var id: String { rawValue }

  var title: LocalizedStringKey {
    switch self {
    case .all: "All Symbols"
    case .line: "Line"
    case .fill: "Fill"
    case .color: "Color"
    }
  }

  func contains(_ symbol: BrianSymbol) -> Bool {
    switch self {
    case .all: true
    case .line: !symbol.isMulticolor && !symbol.isFill
    case .fill: !symbol.isMulticolor && symbol.isFill
    case .color: symbol.isMulticolor
    }
  }

  var icon: BrianSymbol {
    switch self {
    case .all: .squareGrid2x2
    case .line: .square
    case .fill: .squareFill
    case .color: .colorFolder
    }
  }
}
