import AppKit
import BrianSymbols
import SwiftUI

struct BrowserSidebar: View {
  @Binding var group: SymbolGroup?

  var body: some View {
    List(selection: $group) {
      Section("보관함") {
        ForEach(SymbolGroup.allCases) { item in
          Label {
            Text(item.rawValue)
          } icon: {
            Image(brianSymbol: item.icon)
          }
          .tag(item)
        }
      }
    }
    .navigationTitle("Brian Symbols")
    .navigationSplitViewColumnWidth(min: 180, ideal: 200)
  }
}
