import SwiftUI

public enum BrianSymbol: String, CaseIterable, Identifiable, Sendable {
  case chevronDown = "brian.chevron.down"
  case chevronLeft = "brian.chevron.left"
  case chevronRight = "brian.chevron.right"
  case chevronUp = "brian.chevron.up"
  case gearshape = "brian.gearshape"
  case gearshapeFill = "brian.gearshape.fill"
  case house = "brian.house"
  case houseFill = "brian.house.fill"
  case minus = "brian.minus"
  case plus = "brian.plus"
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
