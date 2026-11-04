import BrianSymbols
import SwiftUI

enum PreviewRenderingMode: String, CaseIterable, Identifiable {
  case multicolor
  case monochrome
  case hierarchical
  case palette

  var id: Self { self }

  var title: LocalizedStringKey {
    switch self {
    case .multicolor: "Multicolor"
    case .monochrome: "Monochrome"
    case .hierarchical: "Hierarchical"
    case .palette: "Palette"
    }
  }

  var symbolRenderingMode: SymbolRenderingMode {
    switch self {
    case .multicolor: .multicolor
    case .monochrome: .monochrome
    case .hierarchical: .hierarchical
    case .palette: .palette
    }
  }
}

@MainActor
@ViewBuilder
func symbolImage(
  _ symbol: BrianSymbol,
  pointSize: Double,
  weight: SymbolWeight,
  tint: Color,
  renderingMode: PreviewRenderingMode = .multicolor,
  palettePrimary: Color = Color(red: 50 / 255, green: 152 / 255, blue: 245 / 255),
  paletteSecondary: Color = Color(red: 130 / 255, green: 200 / 255, blue: 245 / 255),
  paletteTertiary: Color = Color(red: 244 / 255, green: 250 / 255, blue: 255 / 255)
) -> some View {
  let mode: PreviewRenderingMode = symbol.isMulticolor ? renderingMode : .monochrome
  let image = Image(brianSymbol: symbol)
    .symbolRenderingMode(mode.symbolRenderingMode)
    .font(.system(size: pointSize, weight: weight.fontWeight))
    .imageScale(.small)

  Group {
    if mode == .palette {
      image.foregroundStyle(palettePrimary, paletteSecondary, paletteTertiary)
    } else if mode == .multicolor {
      image
    } else {
      image.foregroundStyle(tint)
    }
  }
  .frame(width: pointSize, height: pointSize)
}
