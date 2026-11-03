# Brian Symbols

둥근 곡선과 단순한 형태의 커스텀 SF Symbol을 제공하는 Swift Package. 현재 단색 집 line·fill을 포함하며, 에셋과 공개 이름은 패키지에서 관리한다.

## 다른 앱에서 사용

Xcode의 Package Dependencies에서 이 저장소를 추가하고 앱 타깃에 `BrianSymbols` 제품을 연결한다. 로컬 개발에서는 Add Local로 저장소 루트를 선택한다. 원격 배포에는 저장소 URL과 사용할 브랜치 또는 버전 태그가 필요하다. 현재 작업에서는 원격 게시나 버전 태그를 만들지 않았다.

다른 Swift Package에서 로컬로 사용할 경우 `.package(path: "../swift-brian-symbols")`를 dependencies에, `.product(name: "BrianSymbols", package: "swift-brian-symbols")`를 사용하는 타깃의 dependencies에 추가한다. 경로는 실제 체크아웃 위치에 맞춘다.

```swift
import SwiftUI
import BrianSymbols

Image(brianSymbol: .house)
    .symbolRenderingMode(.monochrome)
    .foregroundStyle(.primary)
    .font(.system(size: 24, weight: .regular))
    .imageScale(.small)
    .frame(width: 24, height: 24)

Image(brianSymbol: .houseFill)
```

`Image(brianSymbol:)`은 패키지의 리소스 번들에서 에셋을 찾는다. 앱에 SVG를 따로 복사할 필요가 없다. `Image("brian.house")`는 기본적으로 앱 번들을 찾으므로 위 API를 사용한다. UIKit·AppKit에서 직접 불러올 때는 `BrianSymbol.resourceBundle`과 심볼의 `rawValue`를 사용한다.

선언한 최소 버전은 iOS 16, macOS 13이며 데모 앱은 macOS 14 이상이다. macOS에서 빌드와 실제 표시를 확인했으며 iOS 실기기와 최소 OS 버전에서의 동작은 아직 검증하지 않았다.

## 에셋 추가

1. [에셋 카탈로그](Sources/BrianSymbols/Resources/BrianSymbols.xcassets)에 새 `.symbolset`을 추가한다. 이 폴더의 SVG가 편집·배포 기준 원본이다.
2. [BrianSymbol](Sources/BrianSymbols/BrianSymbols.swift)에 에셋 이름과 일치하는 case를 추가한다. 예: `case star = "brian.star"`.
3. 패키지를 다시 빌드한다. 사용하는 앱에서는 새 case를 사용할 수 있고, 데모 목록에도 자동으로 표시된다.

에셋 파일과 공개 case는 함께 추가한다. 데모에 별도 목록을 등록하거나 생성 스크립트를 실행할 필요는 없다. 원격 패키지 소비자는 변경이 포함된 버전으로 의존성을 업데이트하고 다시 빌드해야 한다.

| 공개 case | 에셋 이름 | 형태 |
|---|---|---|
| `.house` | `brian.house` | Line |
| `.houseFill` | `brian.house.fill` | Fill |

## macOS 데모 앱

프로젝트 대신 [BrianSymbolsDemo.xcworkspace](Demo/BrianSymbolsDemo.xcworkspace)를 열고 `BrianSymbolsDemo` scheme을 실행한다. 데모는 `..` 상대 경로로 루트 패키지를 참조하며 에셋을 중복 보유하지 않는다. 외부 의존성과 프로젝트 생성 도구는 필요 없다.

현재 작업 환경의 실행 앱은 `.build/package-demo/Build/Products/Debug/Brian Symbols.app`에 있다. Finder에서 열어 사용할 수 있으며 빌드 결과는 Git에 포함하지 않는다.

- 전체·Line·Fill 분류와 이름 검색
- 심볼 미리보기와 이름 복사
- 크기·굵기·사용자 단색 변경
- 밝은·어두운 배경과 정사각형 영역 확인

현재 데모의 색상 조절은 단색용이다. 향후 다색 에셋을 추가할 때는 다색·팔레트 미리보기도 확장해야 한다.

## 집 아이콘

지붕·몸체·아치형 문으로 구성한 단일 단색 레이어다. 문 안쪽은 투명하며 line은 굵기별 내부 공간을 조정한다. fill은 모든 굵기에서 같은 실루엣을 사용한다.

24단위 디자인을 템플릿에서 4배 확대했다. Regular-S 원점은 (1400, 608), 기준선은 y=696이다. 낮은 지붕과 넓힌 어깨·하단 곡선, 5.5단위 너비의 문을 사용한다.

생성·픽셀 검증용 일회성 스크립트와 비교 이미지는 제거했다. 에셋 수정 후에는 데모에서 크기·굵기·색상을 확인한다. 이전 제작 과정에서는 16·24·32pt와 세 굵기의 크기·정렬을 확인했으며 Dynamic Type과 애니메이션은 아직 검증하지 않았다.

## 제작 문서

- [형태와 이름 규칙](docs/symbol-naming.md)
- [심볼 제작 가이드](docs/symbol-authoring.md)
- [크기와 정렬 기준](docs/symbol-sizing.md)
