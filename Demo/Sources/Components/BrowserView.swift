import AppKit
import BrianSymbols
import SwiftUI

struct BrowserView: View {
  @State private var group: SymbolGroup? = .all
  @State private var selection: BrianSymbol? = .house
  @State private var query = ""
  @State private var size = 64.0
  @State private var weight: SymbolWeight = .regular
  @State private var tint = Color.primary
  @State private var darkPreview = false
  @State private var showBounds = false

  private var filtered: [BrianSymbol] {
    BrianSymbol.allCases.filter {
      (group == .all || group == nil || (group == .fill ? $0.isFill : !$0.isFill)) &&
      (query.isEmpty || $0.id.localizedCaseInsensitiveContains(query))
    }
  }

  var body: some View {
    NavigationSplitView {
      BrowserSidebar(group: $group)
    } detail: {
      HStack(spacing: 0) {
        VStack(spacing: .zero) {
          BrowserContentHeader(group: $group, count: filtered.count)
            .padding(24)

          Divider()

          if filtered.isEmpty {
            ContentUnavailableView.search(text: query)
          } else {
            ScrollView {
              LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 150), spacing: 16)],
                spacing: 16
              ) {
                ForEach(filtered) { symbol in
                  SymbolRow(
                    symbol: symbol,
                    isSelected: selection == symbol,
                    weight: weight,
                    tint: tint
                  ) {
                    selection = symbol
                  }
                }
              }
              .padding(24)
            }
          }

          Spacer(minLength: 0)
        }
        .frame(minWidth: 340, maxWidth: .infinity, maxHeight: .infinity)

        Divider()

        SymbolPreview(
          selection: selection,
          darkPreview: $darkPreview,
          showBounds: $showBounds,
          size: $size,
          weight: $weight,
          tint: $tint
        )
        .frame(width: 300)
      }
      .navigationTitle("심볼 둘러보기")
      .searchable(text: $query, prompt: "심볼 검색")
    }
    .frame(minWidth: 880, minHeight: 620)
    .onChange(of: filtered) { _, symbols in
      if selection.map({ symbols.contains($0) }) != true {
        selection = symbols.first
      }
    }
  }
}
