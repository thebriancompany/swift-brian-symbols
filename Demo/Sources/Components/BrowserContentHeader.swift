import AppKit
import BrianSymbols
import SwiftUI

struct BrowserContentHeader: View {
  @Binding var group: SymbolGroup?
  let count: Int

  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 6) {
        Text(group?.rawValue ?? "모든 심볼")
          .font(.title2.bold())

        Text("\(count)개의 심볼")
          .font(.subheadline)
          .foregroundStyle(.secondary)
      }

      Spacer()
    }
  }
}
