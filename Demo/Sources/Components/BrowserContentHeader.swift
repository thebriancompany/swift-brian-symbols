import AppKit
import BrianSymbols
import SwiftUI

struct BrowserContentHeader: View {
  @Binding var group: SymbolGroup?
  let count: Int

  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 6) {
        Text((group ?? .all).title)
          .font(.title2.bold())

        Text("\(count) symbols")
          .font(.subheadline)
          .foregroundStyle(.secondary)
      }

      Spacer()
    }
  }
}
