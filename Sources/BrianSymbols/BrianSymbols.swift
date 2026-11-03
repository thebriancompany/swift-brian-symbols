import SwiftUI

public enum BrianSymbol: String, CaseIterable, Identifiable, Sendable {
  case chevronDown = "brian.chevron.down"
  case chevronDownCircle = "brian.chevron.down.circle"
  case chevronDownCircleFill = "brian.chevron.down.circle.fill"
  case chevronLeft = "brian.chevron.left"
  case chevronLeftCircle = "brian.chevron.left.circle"
  case chevronLeftCircleFill = "brian.chevron.left.circle.fill"
  case chevronRight = "brian.chevron.right"
  case chevronRightCircle = "brian.chevron.right.circle"
  case chevronRightCircleFill = "brian.chevron.right.circle.fill"
  case chevronUp = "brian.chevron.up"
  case chevronUpCircle = "brian.chevron.up.circle"
  case chevronUpCircleFill = "brian.chevron.up.circle.fill"
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
