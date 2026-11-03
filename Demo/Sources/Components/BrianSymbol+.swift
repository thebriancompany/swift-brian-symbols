import BrianSymbols

extension BrianSymbol {
  var title: String {
    rawValue.replacingOccurrences(of: "brian.", with: "")
  }
}
