import AppKit
import BrianSymbols
import SwiftUI

@main
struct BrianSymbolsApp: App {
  var body: some Scene {
    WindowGroup {
      BrowserView()
    }
    .defaultSize(width: 1040, height: 700)
  }
}
