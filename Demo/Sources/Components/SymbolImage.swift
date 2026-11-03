import BrianSymbols
import SwiftUI

@MainActor
func symbolImage(
  _ symbol: BrianSymbol,
  pointSize: Double,
  weight: SymbolWeight,
  tint: Color
) -> some View {
  Image(brianSymbol: symbol)
    .symbolRenderingMode(.monochrome)
    .font(.system(size: pointSize, weight: weight.fontWeight))
    .imageScale(.small)
    .foregroundStyle(tint)
    .frame(width: pointSize, height: pointSize)
}
