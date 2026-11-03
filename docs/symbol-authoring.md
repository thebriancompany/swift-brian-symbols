# 커스텀 심볼 제작 가이드

먼저 [종류와 형태 규칙](symbol-naming.md)에 따라 다색 또는 단색을 선택한다. 다색은 채움형에 여러 색상 역할을 정의하고, 단색은 단순화한 line·fill에 하나의 색상을 적용한다. 꽃 심볼을 예시로 벡터 제작, 주석 설정, 앱 적용과 검증 절차를 설명한다. 예시 에셋은 아직 제작하지 않았다.

## 다색 심볼의 렌더링 모드

| 제공 스타일 | 모드 | 제작 시 정의 | 사용 시 지정 |
|---|---|---|---|
| 기본 컬러 | Multicolor | 레이어별 기본 색상 | tint로 정의한 영역의 색상 |
| 사용자 단색 | Monochrome | 단색에서도 식별되는 형태 | 전체 색상 |
| 사용자 팔레트 | Palette | Primary·Secondary·Tertiary 그룹 | 최대 세 그룹의 색상 |
| 흑백 | Monochrome 또는 Palette | 명암 대비와 형태 | 검정·흰색 조합 |
| 계층 색상 | Hierarchical | 계층 그룹 | 하나의 기준 색상 |

Hierarchical은 하나의 색상을 계층별 불투명도로 표현한다. Palette와 같은 계층 데이터를 사용한다. 흑백은 별도 렌더링 모드가 아니라 색상 프리셋으로 제공한다. 모든 경로에 개별 색상을 전달하는 기능은 세 그룹을 사용하는 Palette와 구분한다. [Apple 렌더링 모드 안내](https://developer.apple.com/design/human-interface-guidelines/sf-symbols)

다색의 기본 표시 방식은 Multicolor로 설계한다. 사용처의 기본 동작에 의존하지 않고 모드를 명시한다. 실제 API는 구현 단계에서 정한다.

## 단색 심볼의 렌더링 모드

단색 line·fill은 Monochrome으로 표시하고 전체에 하나의 사용자 색상을 적용한다. 검정과 흰색은 각각 단색 선택지다. 한 에셋 안에서 검정과 흰색을 서로 다른 영역에 적용하는 표현은 다색 종류의 팔레트에 해당한다. 단색에는 Multicolor·Palette·Hierarchical용 장식 레이어를 요구하지 않는다.

## 벡터 제작

먼저 종류와 에셋 이름을 정하고, 식별에 필요한 도형만 남긴다. 다색은 채움형 하나, 단색은 line·fill을 제작한다. 단색의 형태 예외는 [종류별 제작 범위와 단순화 원칙](symbol-naming.md)을 따른다.

1. SF Symbols 앱에서 수정이 허용된 심볼의 템플릿을 내보낸다.
2. 벡터 편집 도구에서 템플릿 구조와 가이드를 유지하며 도형을 만든다.
3. [크기와 정렬 기준](symbol-sizing.md)에 따라 공통 영역과 내부 비례를 맞춘다.
4. 선을 면으로 변환하고, 닫힌 경로와 평면 채우기로 정리한다.
5. 숨김 경로와 그림자 등 추가 효과를 제거한다.
6. 필요한 굵기·스케일 변형의 구조를 맞추고 SF Symbols 앱으로 가져와 검증한다.

한두 가지 굵기·스케일만 제작할 때는 Static 템플릿을, 전체 변형을 보간으로 지원할 때는 Variable 템플릿을 선택한다. Variable에서는 `Ultralight-S`, `Regular-S`, `Black-S`를 보간 소스로 준비한다. 세 소스는 면 기반 경로여야 하며 경로 수와 제어점 수가 같아야 한다. 대응하는 경로의 순서와 의미도 유지한다. 자동 생성된 중간 굵기와 스케일은 미리보기에서 확인한다. 명시적으로 제작한 변형이 있으면 해당 변형이 보간 결과보다 우선한다. 여기서 Variable 템플릿은 Variable Color와 다른 개념이다. [Apple의 템플릿과 보간 조건](https://developer.apple.com/documentation/technologyoverviews/custom-sf-symbols)

숨긴 경로도 심볼 윤곽으로 해석될 수 있다. 정사각형 경계를 만들 목적으로 숨긴 사각형을 추가하지 않는다. 주석 설정 후 경로를 삭제하거나 재정렬하면 다시 주석을 설정해야 할 수 있으므로, 형태를 먼저 확정한다. [경로 제작과 주석 유지 조건](https://developer.apple.com/documentation/uikit/creating-custom-symbol-images-for-your-app)

Apple 제품과 기능을 나타내는 일부 심볼은 수정이 제한된다. 템플릿을 선택할 때 SF Symbols 앱의 제한 안내를 확인한다. [커스텀 심볼 디자인 안내](https://developer.apple.com/design/human-interface-guidelines/sf-symbols)

## 예시: 다색 꽃 심볼의 레이어 설정

에셋 이름을 `brian.color.flower`로 정하고 꽃잎, 꽃 중심, 줄기와 잎을 채워진 면으로 제작한다. line 변형은 만들지 않는다.

| 도형 | 기본 컬러 | 계층 그룹 | 팔레트 역할 |
|---|---|---|---|
| 꽃잎 | 분홍 | Primary | 첫 번째 색상 |
| 꽃 중심 | 노랑 | Secondary | 두 번째 색상 |
| 줄기와 잎 | 초록 | Tertiary | 세 번째 색상 |

꽃잎이 여러 경로여도 하나의 그룹에 배정할 수 있다. 단색에서 꽃잎과 중심이 합쳐져 식별이 어렵다면 실제 빈 공간이나 윤곽으로 경계를 만든다. 흰색 도형으로 덮는 것은 투명한 빈 공간과 다르다.

SF Symbols 앱에서 갤러리 보기와 Rendering Inspector를 열고 다음을 설정한다.

1. Multicolor에서 레이어별 기본 색상을 지정한다.
2. Hierarchical에서 Primary·Secondary·Tertiary를 배정한다. Palette도 이 데이터를 사용한다.
3. Monochrome에서 형태와 겹침을 확인한다.
4. 각 모드의 미리보기에서 레이어 순서와 색상을 검토한다.

기본 컬러에는 고정 색상, 시스템 색상 또는 에셋 카탈로그 색상을 사용할 수 있다. 어두운 모드와 높은 대비에 적응하려면 해당 외형이 정의된 색상을 사용한다. 꽃잎만 사용자 색상을 따르게 하려면 꽃잎을 `tintColor`로 지정한다. [주석 설정 방법](https://developer.apple.com/documentation/technologyoverviews/annotating-sf-symbols)

## 다색 컨테이너의 단색 표현

채워진 컨테이너 안에 대상이 있는 다색 심볼은 Monochrome에서도 내부 대상이 식별되어야 한다. 색상 대비만으로 구분하면 같은 색으로 합쳐질 수 있으므로, 모드별 레이어 구성이나 실제 투명 영역으로 내부 형태를 유지한다.

예를 들어 `brian.color.heart.circle`은 Multicolor에서 원과 하트를 서로 다른 색으로 표시하고, Monochrome에서는 채워진 원 안에 하트 모양의 투명 영역을 남길 수 있다. 흰색 도형으로 덮어 투명 영역을 대신하지 않는다. 이는 같은 다색 채움형 에셋의 렌더링 설정이며, 별도 line 변형을 추가하는 것이 아니다.

작은 크기에서 검정 단색과 흰색 단색을 각각 대비되는 배경에 표시하고, 내부 대상이 사라지거나 경계가 뭉치지 않는지 확인한다.

## 내보내기와 앱 적용 예시

SF Symbols 앱에서 배포용으로 내보낸 SVG를 패키지의 에셋 카탈로그에 심볼 에셋으로 추가하고, 이름과 일치하는 `BrianSymbol` case를 등록한다. 경로와 등록·빌드 순서는 [README의 에셋 추가 절차](../README.md#에셋-추가)를 따른다. 등록 후 데모에서 표시 결과를 확인한다. 일반 이미지로 추가하는 것만으로 심볼 주석이 갖춰지는 것은 아니다.

아래 꽃 예시는 일반적인 SwiftUI 렌더링 모드 설명이다. 패키지 등록 절차와는 별개로, `brian.color.flower`를 앱의 에셋 카탈로그에 직접 넣고 필요한 주석을 설정했다고 가정한다. 예시 에셋은 없으며 이 코드는 아직 실행 검증하지 않았다. 현재 패키지의 사용법과 최소 지원 버전은 [README의 다른 앱에서 사용](../README.md#다른-앱에서-사용)을 따른다.

```swift
import SwiftUI

struct FlowerStyles: View {
    var body: some View {
        HStack(spacing: 20) {
            Image("brian.color.flower")
                .symbolRenderingMode(.multicolor)

            Image("brian.color.flower")
                .symbolRenderingMode(.monochrome)
                .foregroundStyle(.purple)

            Image("brian.color.flower")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.orange, .yellow, .green)

            Image("brian.color.flower")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.black, .white, .black)

            Image("brian.color.flower")
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(.blue)
        }
        .font(.system(size: 20))
    }
}
```

이 예시는 색상 적용만 설명한다. 정사각형 프레임은 [크기와 정렬 기준의 표시 예시](symbol-sizing.md#에셋과-표시-뷰의-책임)를 적용한다. 흑백 조합은 배경에 따라 반전하거나 적응형 색상으로 바꾼다. 전체 흰색은 Monochrome에 흰색 하나를 지정한다.

Swift Package의 리소스라면 해당 번들을 지정한다. 리소스 처리가 구성된 패키지 타깃 내부에서는 `Image("brian.color.flower", bundle: .module)`을 사용할 수 있다.

지원하지 않는 모드를 요청하면 단색으로 표시될 수 있다. 색상 지정 코드와 에셋 주석을 함께 검증한다. [앱에서 심볼 설정하기](https://developer.apple.com/documentation/uikit/configuring-and-displaying-symbol-images-in-your-ui)

이 패키지의 단색은 `import BrianSymbols` 후 `Image(brianSymbol: .house)` 또는 `Image(brianSymbol: .houseFill)`에 `.symbolRenderingMode(.monochrome).foregroundStyle(.purple)`을 적용한다. 단색 집 에셋은 제공 중이며, macOS 데모 앱에서 확인할 수 있다.

## 색상 외 기능

색상 지원만으로 모든 심볼 기능이 완성되지는 않는다. 다음 기능은 필요한 주석과 대상 OS를 확인한 뒤 제작 범위에 포함한다.

| 기능 | 제작·검증 내용 |
|---|---|
| 굵기·스케일 | 변형별 비례, 경로 호환성과 작은 크기 가독성 |
| 텍스트 정렬 | 기준선과 여백 |
| Variable Color | 참여 레이어와 강조 순서 |
| 애니메이션 | 전체·레이어별 동작과 효과에 필요한 주석 |
| Draw On/Off·Variable Draw | 그리기 경로와 순서에 대한 주석 |
| 그라디언트 표현 | 지원 OS에서 렌더링 모드와 함께 적용한 결과 |

Variable Color는 값에 따라 레이어의 불투명도와 강조를 바꾸는 기능이다. 임의의 색상 간 보간과 구분한다. 애니메이션은 모든 효과에 별도 주석이 필요한 것은 아니다. [기능 개요](https://developer.apple.com/sf-symbols/), [가변 렌더링 및 애니메이션 주석](https://developer.apple.com/documentation/technologyoverviews/annotating-sf-symbols)

패키지에 선언된 최소 지원 OS와 실제 검증 범위는 [README의 지원 버전 설명](../README.md#다른-앱에서-사용)을 따른다. 사용할 SF Symbols 도구 버전은 아직 확정하지 않았다. 추가 기능을 제작할 때는 패키지의 최소 버전과 별도로 해당 기능의 OS·도구 지원 조건을 확인하고, 실제 검증한 환경과 대체 표현을 기록한다. 패키지의 최소 버전 선언만으로 모든 기능의 동작을 보장하지 않는다.

## 완료 기준

- SF Symbols 앱에서 템플릿과 주석이 유효하다.
- 다색은 채움형만 제공하며 기본 컬러·단색·팔레트·흑백·계층 표현을 실제 앱에서 검증한다.
- 다색 컨테이너는 [단색 표현 기준](#다색-컨테이너의-단색-표현)에 따라 작은 크기의 Monochrome에서도 내부 대상이 식별된다.
- 단색은 line·fill 또는 명시된 형태 예외를 제공하며, 사용자 단색·검정·흰색을 검증한다.
- 단색은 다색 버전의 장식이나 색상 경계를 그대로 복제하지 않고, 작은 크기에서 필요한 요소만 남긴다.
- 밝은 배경과 어두운 배경에서 형태와 내부 경계가 식별된다.
- [크기 검증](symbol-sizing.md#크기-검증)을 통과한다.
- 추가한 가변 렌더링과 애니메이션을 대상 OS에서 확인한다.
- 제작 원본, 배포용 SVG, 에셋 이름과 지원 기능을 함께 관리한다.

첫 제작에서는 단색 line·fill과 다색 채움형을 각각 제작하고 종류에 맞는 검증을 수행한다. 검증 후 수치와 API를 확정하고 다른 심볼에 같은 기준을 적용한다.
