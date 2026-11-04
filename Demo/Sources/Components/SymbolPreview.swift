import BrianSymbols
import SwiftUI

struct SymbolPreview: View {
  let selection: BrianSymbol?
  @Binding var darkPreview: Bool
  @Binding var showBounds: Bool
  @Binding var size: Double
  @Binding var weight: SymbolWeight
  @Binding var tint: Color

  @State private var renderingMode: PreviewRenderingMode = .multicolor
  @State private var palettePrimary = Color(red: 50 / 255, green: 152 / 255, blue: 245 / 255)
  @State private var paletteSecondary = Color(red: 130 / 255, green: 200 / 255, blue: 245 / 255)
  @State private var paletteTertiary = Color(red: 244 / 255, green: 250 / 255, blue: 255 / 255)

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

          Text((selection.isMulticolor ? SymbolGroup.color : selection.isFill ? .fill : .line).title)
            .font(.caption.weight(.medium))
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(.quaternary, in: .capsule)
        }

        ZStack {
          RoundedRectangle(cornerRadius: 18)
            .fill(darkPreview ? Color(white: 0.12) : .white)

          symbolImage(
            selection,
            pointSize: size,
            weight: weight,
            tint: tint,
            renderingMode: renderingMode,
            palettePrimary: palettePrimary,
            paletteSecondary: paletteSecondary,
            paletteTertiary: paletteTertiary
          )
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

        if selection.isMulticolor {
          Picker("Rendering Mode", selection: $renderingMode) {
            ForEach(PreviewRenderingMode.allCases) { mode in
              Text(mode.title).tag(mode)
            }
          }
          .pickerStyle(.menu)
        }

        if selection.isMulticolor && renderingMode == .palette {
          ColorPicker("Primary Color", selection: $palettePrimary, supportsOpacity: false)
          ColorPicker("Secondary Color", selection: $paletteSecondary, supportsOpacity: false)
          ColorPicker("Tertiary Color", selection: $paletteTertiary, supportsOpacity: false)
        } else {
          ColorPicker("Color", selection: $tint, supportsOpacity: false)
        }

        if selection.isMulticolor && renderingMode == .multicolor {
          Text("Tint changes supported layers; fixed colors stay unchanged.")
            .font(.caption)
            .foregroundStyle(.secondary)
        }

        Button("Reset to Default Color") {
          resetColorButtonTapped()
        }

        Toggle("Dark Background", isOn: $darkPreview)

        Toggle("Show Image Bounds", isOn: $showBounds)
      }
      .padding(24)
    }
    .background(Color(nsColor: .windowBackgroundColor))
  }

  private func resetColorButtonTapped() {
    tint = .primary
    palettePrimary = Color(red: 50 / 255, green: 152 / 255, blue: 245 / 255)
    paletteSecondary = Color(red: 130 / 255, green: 200 / 255, blue: 245 / 255)
    paletteTertiary = Color(red: 244 / 255, green: 250 / 255, blue: 255 / 255)
  }
}
