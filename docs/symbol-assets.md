# 에셋 목록과 개별 사양

패키지가 제공하는 심볼의 공개 이름, 제작 특성과 검증 범위를 정리한다. 사용법은 [README](../README.md#다른-앱에서-사용), 새 에셋의 등록 절차는 [제작 가이드](symbol-authoring.md#패키지에-에셋-추가)를 따른다.

## 제공 에셋

공개 이름은 [BrianSymbol](../Sources/BrianSymbols/BrianSymbols.swift), 배포 원본은 [에셋 카탈로그](../Sources/BrianSymbols/Resources/BrianSymbols.xcassets)에서 관리한다. 현재 제공 에셋은 모두 단색이며 Monochrome으로 표시한다.

목록과 개별 사양은 에셋 이름 기준 알파벳순으로 배치한다.

| 대상 | 기본·Line case | Fill case | 에셋 이름 |
|---|---|---|---|
| [아래쪽 꺾쇠](#chevron) | `.chevronDown` | — | `brian.chevron.down` |
| [아래쪽 원형 꺾쇠](#chevron-circle) | `.chevronDownCircle` | `.chevronDownCircleFill` | `brian.chevron.down.circle`, `brian.chevron.down.circle.fill` |
| [왼쪽 꺾쇠](#chevron) | `.chevronLeft` | — | `brian.chevron.left` |
| [왼쪽 원형 꺾쇠](#chevron-circle) | `.chevronLeftCircle` | `.chevronLeftCircleFill` | `brian.chevron.left.circle`, `brian.chevron.left.circle.fill` |
| [오른쪽 꺾쇠](#chevron) | `.chevronRight` | — | `brian.chevron.right` |
| [오른쪽 원형 꺾쇠](#chevron-circle) | `.chevronRightCircle` | `.chevronRightCircleFill` | `brian.chevron.right.circle`, `brian.chevron.right.circle.fill` |
| [위쪽 꺾쇠](#chevron) | `.chevronUp` | — | `brian.chevron.up` |
| [위쪽 원형 꺾쇠](#chevron-circle) | `.chevronUpCircle` | `.chevronUpCircleFill` | `brian.chevron.up.circle`, `brian.chevron.up.circle.fill` |
| [톱니바퀴](#gearshape) | `.gearshape` | `.gearshapeFill` | `brian.gearshape`, `brian.gearshape.fill` |
| [집](#house) | `.house` | `.houseFill` | `brian.house`, `brian.house.fill` |
| [빼기](#minus) | `.minus` | — | `brian.minus` |
| [더하기](#plus) | `.plus` | — | `brian.plus` |

컨테이너 없는 `chevron`, `minus`, `plus`는 line·fill의 구분이 성립하지 않아 기본 형태만 제공한다. 데모에서는 Line으로 분류한다.

## 공통 제작 설정

현재 에셋은 24 × 24단위 디자인을 SVG 템플릿에서 4배 확대했다. Regular-S 원점은 (1400, 608), 기준선은 y=696이다. `Ultralight-S`, `Regular-S`, `Black-S`를 보간 소스로 사용한다. 일반적인 제작 기준은 [크기와 정렬 기준](symbol-sizing.md)을 따른다.

`chevron`, `chevron circle`, `gearshape`의 line, `minus`, `plus`는 Ultralight·Regular·Black 소스에서 각각 디자인 좌표 기준 0.9·1.65·2.35단위의 두께를 사용한다. 원형 꺾쇠의 fill 내부 투명 꺾쇠에도 같은 두께를 적용한다. 이 수치는 house의 내부 공간이나 gearshape의 fill에는 적용하지 않는다.

chevron과 plus는 일정한 두께의 선을 닫힌 면 경로로 변환하고, 굵기 간 경로 명령 구조를 동일하게 유지한다.

편집 기준은 카탈로그의 SVG이며, 일회성 생성·검증 스크립트와 비교 이미지는 저장소에 포함하지 않는다. 수정 후에는 데모에서 크기·굵기·색상을 확인하고 해당 에셋의 검증 범위를 갱신한다.

현재 에셋 모두 iOS 실기기, 최소 지원 OS, Dynamic Type과 애니메이션은 아직 검증하지 않았다. 선언된 지원 버전은 [README](../README.md#다른-앱에서-사용)를 참조한다.

## chevron

좌·우·상·하 네 방향의 꺾쇠다. 왼쪽 형태의 중심선 (15.5, 5) → (8.5, 12) → (15.5, 19)를 중심 (12, 12) 주위로 회전해 방향별 비례를 맞춘다. 선 끝과 꺾이는 모서리는 둥글게 마감한다.

chevron 네 방향은 macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## chevron circle

네 방향 꺾쇠를 지름 20단위의 원 안에 배치한다. 내부 꺾쇠는 왼쪽 중심선 (14, 8) → (10, 12) → (14, 16)을 기준으로 회전하며, 선 끝과 꺾이는 모서리를 둥글게 마감한다. 꺾쇠의 면적 중심이 원 중심에 맞도록 가리키는 방향으로 시각 보정한다. Ultralight·Regular·Black의 이동량은 각각 0.124·0.215·0.290단위이며 line·fill에 동일하게 적용한다.

- Line: 원 테두리와 꺾쇠에 같은 두께를 적용한다. 굵기가 바뀌어도 원의 바깥 지름은 유지한다.
- Fill: 원을 채우고 꺾쇠는 실제 투명 영역으로 뚫는다. 원의 실루엣은 유지하고 꺾쇠의 두께는 굵기에 따라 바뀐다.

원형 꺾쇠 네 방향의 line·fill은 macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## gearshape

여덟 개의 톱니와 중앙 원으로 구성한 단일 단색 레이어다. 톱니 끝은 평평한 느낌을 유지하고 모서리는 부드러운 곡선으로 연결한다.

- Line: 톱니 윤곽의 양쪽 경계를 중심 곡선에서 같은 거리만큼 이동해 일정한 선 두께를 만든다. 중앙 원에도 같은 두께를 적용한다.
- Fill: 중앙에 투명한 원을 두며 모든 굵기에서 같은 실루엣을 사용한다.

macOS 데모 빌드와 AppKit의 56pt 렌더링에서 세 소스 굵기의 line·fill을 확인했다. 생성 좌표에서 톱니 양쪽 경계의 간격도 검증했다. 16·24·32pt의 작은 크기 비교는 아직 검증하지 않았다.

## house

지붕·몸체·아치형 문으로 구성한 단일 단색 레이어다. 낮은 지붕과 넓힌 어깨·하단 곡선, 5.5단위 너비의 문을 사용한다. 문 안쪽은 투명하다.

- Line: 굵기별 내부 공간을 조정한다.
- Fill: 모든 굵기에서 같은 실루엣을 사용한다.

macOS에서 16·24·32pt와 세 굵기의 크기·정렬을 확인했다.

## minus

plus의 가로선과 같은 길이·두께·중심을 사용하는 빼기다. 중심선은 (4, 12) → (20, 12)이며 양 끝을 반원으로 마감한다. line·fill 구분 없이 기본 형태만 제공한다.

macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## plus

가로·세로 길이가 같은 더하기다. 선 끝은 반원으로 마감하고 중심은 디자인 좌표 (12, 12)에 둔다. 중심선의 각 축 길이는 16단위다.

macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.
