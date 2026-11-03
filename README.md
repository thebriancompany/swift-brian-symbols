# Brian Symbols

둥근 곡선과 단순한 형태의 커스텀 SF Symbol을 제공하는 Swift Package. 에셋과 공개 이름은 패키지에서 관리하며, 제공 항목과 개별 사양은 [에셋 목록](docs/symbol-assets.md)에서 확인할 수 있다.

## 다른 앱에서 사용

Xcode의 Package Dependencies에서 이 저장소를 추가하고 앱 타깃에 `BrianSymbols` 제품을 연결한다. 로컬 개발에서는 Add Local로 저장소 루트를 선택한다. 원격 배포에는 저장소 URL과 사용할 브랜치 또는 버전 태그가 필요하다.

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

## macOS 데모 앱

프로젝트 대신 [BrianSymbolsDemo.xcworkspace](Demo/BrianSymbolsDemo.xcworkspace)를 열고 `BrianSymbolsDemo` scheme을 실행한다. 데모는 `..` 상대 경로로 루트 패키지를 참조하며 에셋을 중복 보유하지 않는다. 외부 의존성과 프로젝트 생성 도구는 필요 없다.

- 전체·Line·Fill 분류와 이름 검색
- 심볼 미리보기와 이름 복사
- 크기·굵기·사용자 단색 변경
- 밝은·어두운 배경과 정사각형 영역 확인

현재 데모의 색상 조절은 단색용이다. 향후 다색 에셋을 추가할 때는 다색·팔레트 미리보기도 확장해야 한다.

## 문서

- [에셋 목록과 개별 사양](docs/symbol-assets.md)
- [형태와 이름 규칙](docs/symbol-naming.md)
- [심볼 제작·등록 가이드](docs/symbol-authoring.md)
- [크기와 정렬 기준](docs/symbol-sizing.md)
