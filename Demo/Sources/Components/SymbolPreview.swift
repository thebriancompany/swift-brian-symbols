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
          "선택된 심볼 없음",
          systemImage: "square.dashed",
          description: Text("검색 조건을 바꾸거나 목록에서 심볼을 선택하세요.")
        )
      }
    }
  }

  private func inspector(for selection: BrianSymbol) -> some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 24) {
        HStack {
          Text("미리보기")
            .font(.headline)

          Spacer()

          Text(selection.isFill ? "Fill" : "Line")
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
            Text("크기")

            Spacer()

            Text("\(Int(size)) pt")
              .monospacedDigit()
              .foregroundStyle(.secondary)
          }

          Slider(value: $size, in: 16...128, step: 1)
            .accessibilityLabel("미리보기 크기")

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
          Text("Fill은 모든 굵기에서 같은 실루엣을 사용합니다.")
            .font(.caption)
            .foregroundStyle(.secondary)
        } else {
          Picker("굵기", selection: $weight) {
            ForEach(SymbolWeight.allCases) { weight in
              Text(weight.title)
            }
          }
        }

        ColorPicker(
          "단색",
          selection: $tint,
          supportsOpacity: false
        )

        Button("기본 색상으로 재설정") {
          tint = .primary
        }

        Toggle("어두운 배경", isOn: $darkPreview)

        Toggle("이미지 영역 보기", isOn: $showBounds)
      }
      .padding(24)
    }
    .background(Color(nsColor: .windowBackgroundColor))
  }
}
