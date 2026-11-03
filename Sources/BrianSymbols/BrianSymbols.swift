import SwiftUI

public enum BrianSymbol: String, CaseIterable, Identifiable, Sendable {
  case house = "brian.house"
  case houseFill = "brian.house.fill"
}

extension BrianSymbol {
  public var id: String { rawValue }
  public var isMulticolor: Bool { rawValue.hasPrefix("brian.color.") }
  public var isFill: Bool { isMulticolor || rawValue.hasSuffix(".fill") }

  public static var resourceBundle: Bundle { .module }
}

extension Image {
  public init(brianSymbol symbol: BrianSymbol) {
    self.init(symbol.rawValue, bundle: .module)
  }
}
