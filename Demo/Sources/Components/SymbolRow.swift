import BrianSymbols
import SwiftUI

struct SymbolRow: View {
  let symbol: BrianSymbol
  let isSelected: Bool
  let weight: SymbolWeight
  let tint: Color
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      VStack(spacing: 18) {
        symbolImage(symbol, pointSize: 52, weight: weight, tint: tint)
          .frame(height: 78)

        Text(symbol.title).font(.system(.body, design: .monospaced))
          .foregroundStyle(.primary)
      }
      .frame(maxWidth: .infinity).padding(.vertical, 22)
      .background(
        isSelected ? Color.accentColor.opacity(0.10) : Color(nsColor: .controlBackgroundColor)
      )
      .clipShape(.rect(cornerRadius: 16))
      .overlay(
        RoundedRectangle(
          cornerRadius: 16
        )
        .stroke(
          isSelected ? Color.accentColor : Color.primary.opacity(0.08),
          lineWidth: isSelected ? 2 : 1
        )
      )
      .contentShape(.rect(cornerRadius: 16))
    }
    .buttonStyle(.plain)
    .accessibilityLabel(symbol.id)
    .help(symbol.id)
  }
}
