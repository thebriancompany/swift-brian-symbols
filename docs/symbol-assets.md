# 에셋 목록과 개별 사양

패키지가 제공하는 심볼의 공개 이름, 제작 특성과 검증 범위를 정리한다. 사용법은 [README](../README.md#다른-앱에서-사용), 새 에셋의 등록 절차는 [제작 가이드](symbol-authoring.md#패키지에-에셋-추가)를 따른다.

## 제공 에셋

공개 이름은 [BrianSymbol](../Sources/BrianSymbols/BrianSymbols.swift), 배포 원본은 [에셋 카탈로그](../Sources/BrianSymbols/Resources/BrianSymbols.xcassets)에서 관리한다. 현재 제공 에셋은 모두 단색이며 Monochrome으로 표시한다.

| 대상 | Line case | Fill case | 에셋 이름 |
|---|---|---|---|
| [집](#house) | `.house` | `.houseFill` | `brian.house`, `brian.house.fill` |
| [톱니바퀴](#gearshape) | `.gearshape` | `.gearshapeFill` | `brian.gearshape`, `brian.gearshape.fill` |

## 공통 제작 설정

현재 에셋은 24 × 24단위 디자인을 SVG 템플릿에서 4배 확대했다. Regular-S 원점은 (1400, 608), 기준선은 y=696이다. `Ultralight-S`, `Regular-S`, `Black-S`를 보간 소스로 사용한다. 일반적인 제작 기준은 [크기와 정렬 기준](symbol-sizing.md)을 따른다.

편집 기준은 카탈로그의 SVG이며, 일회성 생성·검증 스크립트와 비교 이미지는 저장소에 포함하지 않는다. 수정 후에는 데모에서 크기·굵기·색상을 확인하고 해당 에셋의 검증 범위를 갱신한다.

두 에셋 모두 iOS 실기기, 최소 지원 OS, Dynamic Type과 애니메이션은 아직 검증하지 않았다. 선언된 지원 버전은 [README](../README.md#다른-앱에서-사용)를 참조한다.

## house

지붕·몸체·아치형 문으로 구성한 단일 단색 레이어다. 낮은 지붕과 넓힌 어깨·하단 곡선, 5.5단위 너비의 문을 사용한다. 문 안쪽은 투명하다.

- Line: 굵기별 내부 공간을 조정한다.
- Fill: 모든 굵기에서 같은 실루엣을 사용한다.

macOS에서 16·24·32pt와 세 굵기의 크기·정렬을 확인했다.

## gearshape

여덟 개의 톱니와 중앙 원으로 구성한 단일 단색 레이어다. 톱니 끝은 평평한 느낌을 유지하고 모서리는 부드러운 곡선으로 연결한다.

- Line: 톱니 윤곽의 양쪽 경계를 중심 곡선에서 같은 거리만큼 이동해 일정한 선 두께를 만든다. 중앙 원에도 같은 두께를 적용한다. Ultralight·Regular·Black 소스의 두께는 각각 디자인 좌표 기준 0.9·1.65·2.35단위다.
- Fill: 중앙에 투명한 원을 두며 모든 굵기에서 같은 실루엣을 사용한다.

macOS 데모 빌드와 AppKit의 56pt 렌더링에서 세 소스 굵기의 line·fill을 확인했다. 생성 좌표에서 톱니 양쪽 경계의 간격도 검증했다. 16·24·32pt의 작은 크기 비교는 아직 검증하지 않았다.

