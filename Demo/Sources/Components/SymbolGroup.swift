import Foundation

enum SymbolGroup: String, CaseIterable, Identifiable {
  case all = "모든 심볼"
  case line = "Line"
  case fill = "Fill"

  var id: String { rawValue }

  var icon: String {
    switch self {
    case .all: "square.grid.2x2"
    case .line: "square"
    case .fill: "square.fill"
    }
  }
}
