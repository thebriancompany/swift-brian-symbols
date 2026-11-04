import AppKit
import BrianSymbols
import SwiftUI

struct BrowserSidebar: View {
  @Binding var group: SymbolGroup?

  var body: some View {
    List(selection: $group) {
      Section("Library") {
        ForEach(SymbolGroup.allCases) { item in
          Label {
            Text(item.title)
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
