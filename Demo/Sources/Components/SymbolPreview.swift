import BrianSymbols
import SwiftUI

struct SymbolPreview: View {
  let selection: BrianSymbol?
  @Binding var darkPreview: Bool
  @Binding var showBounds: Bool
  @Binding var size: Double
  @Binding var weight: SymbolWeight
  @Binding var tint: Color

  var body: some View {
    Group {
      if let selection {
        inspector(for: selection)
      } else {
        ContentUnavailableView(
          "No Symbol Selected",
          systemImage: "square.dashed",
          description: Text("Change your search or select a symbol from the list.")
        )
      }
    }
  }

  private func inspector(for selection: BrianSymbol) -> some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 24) {
        HStack {
          Text("Preview")
            .font(.headline)

          Spacer()

          Text((selection.isFill ? SymbolGroup.fill : .line).title)
            .font(.caption.weight(.medium))
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(.quaternary, in: .capsule)
        }

        ZStack {
          RoundedRectangle(cornerRadius: 18)
            .fill(darkPreview ? Color(white: 0.12) : .white)

          symbolImage(selection, pointSize: size, weight: weight, tint: tint)
            .overlay {
              if showBounds {
                Rectangle()
                  .stroke(
                    Color.accentColor.opacity(0.6),
                    style: StrokeStyle(lineWidth: 1, dash: [3])
                  )
              }
            }
            .environment(\.colorScheme, darkPreview ? .dark : .light)
        }
        .frame(height: 200)

        VStack(alignment: .leading, spacing: 10) {
          Text(selection.id)
            .font(.system(.subheadline, design: .monospaced))
            .textSelection(.enabled)
        }

        Divider()

        VStack(alignment: .leading, spacing: 12) {
          HStack {
            Text("Size")

            Spacer()

            Text("\(Int(size)) pt")
              .monospacedDigit()
              .foregroundStyle(.secondary)
          }

          Slider(value: $size, in: 16...128, step: 1)
            .accessibilityLabel("Preview size")

          HStack {
            ForEach([16.0, 24, 32, 64], id: \.self) { value in
              Button("\(Int(value))") {
                size = value
              }
              .frame(maxWidth: .infinity)
            }
          }
        }


        if selection == .houseFill {
          Text("The filled house uses the same silhouette at every weight.")
            .font(.caption)
            .foregroundStyle(.secondary)
        } else {
          Picker("Weight", selection: $weight) {
            ForEach(SymbolWeight.allCases) { weight in
              Text(weight.title)
            }
          }
        }

        ColorPicker(
          "Color",
          selection: $tint,
          supportsOpacity: false
        )

        Button("Reset to Default Color") {
          tint = .primary
        }

        Toggle("Dark Background", isOn: $darkPreview)

        Toggle("Show Image Bounds", isOn: $showBounds)
      }
      .padding(24)
    }
    .background(Color(nsColor: .windowBackgroundColor))
  }
}
