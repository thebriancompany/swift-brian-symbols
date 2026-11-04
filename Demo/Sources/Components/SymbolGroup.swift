import Foundation
import BrianSymbols

enum SymbolGroup: String, CaseIterable, Identifiable {
  case all = "모든 심볼"
  case line = "Line"
  case fill = "Fill"

  var id: String { rawValue }

  var icon: BrianSymbol {
    switch self {
    case .all: .squareGrid2x2
    case .line: .square
    case .fill: .squareFill
    }
  }
}
