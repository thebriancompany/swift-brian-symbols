# 에셋 목록과 개별 사양

패키지가 제공하는 심볼의 공개 이름, 제작 특성과 검증 범위를 정리한다. 사용법은 [README](../README.md#다른-앱에서-사용), 새 에셋의 등록 절차는 [제작 가이드](symbol-authoring.md#패키지에-에셋-추가)를 따른다.

## 제공 에셋

공개 이름은 [BrianSymbol](../Sources/BrianSymbols/BrianSymbols.swift), 배포 원본은 [에셋 카탈로그](../Sources/BrianSymbols/Resources/BrianSymbols.xcassets)에서 관리한다. 현재 제공 에셋은 모두 단색이며 Monochrome으로 표시한다.

목록과 개별 사양은 에셋 이름 기준 알파벳순으로 배치한다.

| 대상 | 기본·Line case | Fill case | 에셋 이름 |
|---|---|---|---|
| [체크마크](#checkmark) | `.checkmark` | — | `brian.checkmark` |
| [원형 체크마크](#checkmark) | `.checkmarkCircle` | `.checkmarkCircleFill` | `brian.checkmark.circle`, `brian.checkmark.circle.fill` |
| [아래쪽 꺾쇠](#chevron) | `.chevronDown` | — | `brian.chevron.down` |
| [아래쪽 원형 꺾쇠](#chevron-circle) | `.chevronDownCircle` | `.chevronDownCircleFill` | `brian.chevron.down.circle`, `brian.chevron.down.circle.fill` |
| [왼쪽 꺾쇠](#chevron) | `.chevronLeft` | — | `brian.chevron.left` |
| [왼쪽 원형 꺾쇠](#chevron-circle) | `.chevronLeftCircle` | `.chevronLeftCircleFill` | `brian.chevron.left.circle`, `brian.chevron.left.circle.fill` |
| [오른쪽 꺾쇠](#chevron) | `.chevronRight` | — | `brian.chevron.right` |
| [오른쪽 원형 꺾쇠](#chevron-circle) | `.chevronRightCircle` | `.chevronRightCircleFill` | `brian.chevron.right.circle`, `brian.chevron.right.circle.fill` |
| [위쪽 꺾쇠](#chevron) | `.chevronUp` | — | `brian.chevron.up` |
| [위쪽 원형 꺾쇠](#chevron-circle) | `.chevronUpCircle` | `.chevronUpCircleFill` | `brian.chevron.up.circle`, `brian.chevron.up.circle.fill` |
| [말줄임표](#ellipsis) | `.ellipsis` | — | `brian.ellipsis` |
| [원형 말줄임표](#ellipsis) | `.ellipsisCircle` | `.ellipsisCircleFill` | `brian.ellipsis.circle`, `brian.ellipsis.circle.fill` |
| [톱니바퀴](#gearshape) | `.gearshape` | `.gearshapeFill` | `brian.gearshape`, `brian.gearshape.fill` |
| [집](#house) | `.house` | `.houseFill` | `brian.house`, `brian.house.fill` |
| [가로선 3개](#line3horizontal) | `.line3Horizontal` | — | `brian.line.3.horizontal` |
| [원형 가로선 3개](#line3horizontal) | `.line3HorizontalCircle` | `.line3HorizontalCircleFill` | `brian.line.3.horizontal.circle`, `brian.line.3.horizontal.circle.fill` |
| [길이가 줄어드는 가로선 3개](#line3horizontal) | `.line3HorizontalDecrease` | — | `brian.line.3.horizontal.decrease` |
| [원형 길이가 줄어드는 가로선 3개](#line3horizontal) | `.line3HorizontalDecreaseCircle` | `.line3HorizontalDecreaseCircleFill` | `brian.line.3.horizontal.decrease.circle`, `brian.line.3.horizontal.decrease.circle.fill` |
| [빼기](#minus) | `.minus` | — | `brian.minus` |
| [더하기](#plus) | `.plus` | — | `brian.plus` |
| [2×2 격자](#squaregrid2x2) | `.squareGrid2x2` | `.squareGrid2x2Fill` | `brian.square.grid.2x2`, `brian.square.grid.2x2.fill` |
| [3×3 격자](#squaregrid3x3) | `.squareGrid3x3` | `.squareGrid3x3Fill` | `brian.square.grid.3x3`, `brian.square.grid.3x3.fill` |
| [위로 쌓인 사각형](#squarestack3dup) | `.squareStack3dUp` | `.squareStack3dUpFill` | `brian.square.stack.3d.up`, `brian.square.stack.3d.up.fill` |
| [X마크](#xmark) | `.xmark` | — | `brian.xmark` |
| [원형 X마크](#xmark) | `.xmarkCircle` | `.xmarkCircleFill` | `brian.xmark.circle`, `brian.xmark.circle.fill` |

컨테이너 없는 `checkmark`, `chevron`, `ellipsis`, `line.3.horizontal`, `line.3.horizontal.decrease`, `minus`, `plus`, `xmark`는 line·fill의 구분이 성립하지 않아 기본 형태만 제공한다. 데모에서는 Line으로 분류한다.

## 공통 제작 설정

현재 에셋은 24 × 24단위 디자인을 SVG 템플릿에서 4배 확대했다. Regular-S 원점은 (1400, 608), 기준선은 y=696이다. `Ultralight-S`, `Regular-S`, `Black-S`를 보간 소스로 사용한다. 일반적인 제작 기준은 [크기와 정렬 기준](symbol-sizing.md)을 따른다.

`checkmark`와 원형 변형, `xmark`와 원형 변형, `chevron`, `chevron circle`, `gearshape`의 line, `minus`, `plus`는 Ultralight·Regular·Black 소스에서 각각 디자인 좌표 기준 0.9·1.65·2.35단위의 두께를 사용한다. 원형 심볼의 fill 내부 투명 기호에도 같은 두께를 적용한다. 이 수치는 house의 내부 공간이나 gearshape의 fill에는 적용하지 않는다.

chevron과 plus는 일정한 두께의 선을 닫힌 면 경로로 변환하고, 굵기 간 경로 명령 구조를 동일하게 유지한다.

편집 기준은 카탈로그의 SVG이며, 일회성 생성·검증 스크립트와 비교 이미지는 저장소에 포함하지 않는다. 수정 후에는 데모에서 크기·굵기·색상을 확인하고 해당 에셋의 검증 범위를 갱신한다.

현재 에셋 모두 iOS 실기기, 최소 지원 OS, Dynamic Type과 애니메이션은 아직 검증하지 않았다. 선언된 지원 버전은 [README](../README.md#다른-앱에서-사용)를 참조한다.

## checkmark

기본 체크마크의 중심선은 (4, 12) → (9.5, 17.5) → (20, 6.5)다. 원형 내부는 (7, 12) → (10.5, 15.5) → (17, 8.5)를 사용한다. 선 끝과 바깥쪽 꺾임은 둥글게 마감한다.

원형은 지름 20단위이며 line은 바깥 지름을 유지한 테두리, fill은 체크마크 모양의 실제 투명 영역을 사용한다.

macOS 데모 빌드, AppKit의 16·24·32pt 렌더링과 세 소스 굵기 간 SVG 경로 구조 일치를 확인했다. SF Symbols 앱 가져오기 검증은 아직 수행하지 않았다.

## chevron

좌·우·상·하 네 방향의 꺾쇠다. 왼쪽 형태의 중심선 (15.5, 5) → (8.5, 12) → (15.5, 19)를 중심 (12, 12) 주위로 회전해 방향별 비례를 맞춘다. 선 끝과 꺾이는 모서리는 둥글게 마감한다.

chevron 네 방향은 macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## chevron circle

네 방향 꺾쇠를 지름 20단위의 원 안에 배치한다. 내부 꺾쇠는 왼쪽 중심선 (14, 8) → (10, 12) → (14, 16)을 기준으로 회전하며, 선 끝과 꺾이는 모서리를 둥글게 마감한다. 꺾쇠의 면적 중심이 원 중심에 맞도록 가리키는 방향으로 시각 보정한다. Ultralight·Regular·Black의 이동량은 각각 0.124·0.215·0.290단위이며 line·fill에 동일하게 적용한다.

- Line: 원 테두리와 꺾쇠에 같은 두께를 적용한다. 굵기가 바뀌어도 원의 바깥 지름은 유지한다.
- Fill: 원을 채우고 꺾쇠는 실제 투명 영역으로 뚫는다. 원의 실루엣은 유지하고 꺾쇠의 두께는 굵기에 따라 바뀐다.

원형 꺾쇠 네 방향의 line·fill은 macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## ellipsis

가로로 나란한 원형 점 세 개를 y=12에 배치한다. 기본형의 점 중심은 x=5·12·19, 원형 내부는 x=7·12·17이다. Ultralight·Regular·Black에서 점의 반지름은 기본형 1.25·1.65·2단위, 원형 내부 1·1.3·1.6단위다.

기본형은 line·fill 구분 없이 제공한다. 원형은 지름 20단위이며 line 테두리 두께는 0.9·1.65·2.35단위다. fill은 같은 외곽 원 안에 점 세 개를 실제 투명 영역으로 뚫는다.

macOS 데모 빌드, SVG 구조와 세 소스 굵기의 경로 명령 구조 일치를 확인했다. SF Symbols 앱 가져오기와 실제 앱 렌더링은 아직 검증하지 않았다.

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

## line.3.horizontal

둥근 끝을 가진 가로선 세 개를 중앙 정렬한다. 기본형의 중심선 길이는 16단위이며 y=6·12·18에 배치한다. decrease는 위에서부터 16·10·4단위로 줄어든다. 원형 내부는 y=8.5·12·15.5에 배치하고 길이는 일반형 10단위, decrease 10·6·2단위다.

기본형은 line·fill 구분 없이 제공한다. 원형은 지름 20단위이며 line은 테두리, fill은 가로선 모양의 실제 투명 영역을 사용한다. 세 소스 굵기의 선 두께는 0.9·1.65·2.35단위다.

macOS 데모 빌드, SVG 구조와 세 소스 굵기의 경로 명령 구조 일치를 확인했다. SF Symbols 앱 가져오기와 실제 앱 렌더링은 아직 검증하지 않았다.

## minus

plus의 가로선과 같은 길이·두께·중심을 사용하는 빼기다. 중심선은 (4, 12) → (20, 12)이며 양 끝을 반원으로 마감한다. line·fill 구분 없이 기본 형태만 제공한다.

macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## plus

가로·세로 길이가 같은 더하기다. 선 끝은 반원으로 마감하고 중심은 디자인 좌표 (12, 12)에 둔다. 중심선의 각 축 길이는 16단위다.

macOS 데모 빌드와 AppKit의 16·24·32pt 렌더링에서 세 소스 굵기를 확인했다.

## square.grid.2x2

20 × 20단위 영역에 둥근 사각형 네 개를 2.5단위 간격으로 배치한다. 바깥 모서리는 3단위 거리부터 곡선으로 연결하고, 안쪽 모서리도 두께에 맞춰 둥글게 처리한다. Line의 세 소스 굵기는 0.9·1.65·2.35단위이며 내부는 실제 투명 영역이다. Fill은 같은 외곽의 사각형을 채운다.

macOS 데모 빌드, SVG 구조와 세 소스 굵기의 경로 명령 구조 일치를 확인했다. SF Symbols 앱 가져오기와 실제 앱 렌더링은 아직 검증하지 않았다.

## square.grid.3x3

20 × 20단위 영역에 둥근 사각형 아홉 개를 2단위 간격으로 배치한다. 바깥 모서리는 1.9단위 거리부터 곡선으로 연결하며 안쪽 모서리도 둥글게 처리한다. 작은 내부 공간을 유지하도록 Line 두께는 2×2 격자의 70%를 적용한다. Fill은 같은 외곽의 사각형을 채운다.

macOS 데모 빌드, SVG 구조와 세 소스 굵기의 경로 명령 구조 일치를 확인했다. SF Symbols 앱 가져오기와 실제 앱 렌더링은 아직 검증하지 않았다.

## square.stack.3d.up

마름모 형태의 상단 면과 아래쪽 두 층을 둥근 모서리의 닫힌 면 경로로 구성한다. 상단 외곽은 꼭짓점에서 2.4단위, 안쪽은 1.5단위 거리부터 곡선으로 연결한다. 아래 두 층도 꺾임과 끝부분을 부드럽게 마감한다. Line은 상단 내부가 투명하고 Fill은 상단 면을 채운다. 아래 두 층의 선 두께는 세 소스 굵기에서 0.9·1.65·2.35단위다.

macOS 데모 빌드, SVG 구조와 세 소스 굵기의 경로 명령 구조 일치를 확인했다. SF Symbols 앱 가져오기와 실제 앱 렌더링은 아직 검증하지 않았다.

## xmark

중심 (12, 12)에서 같은 길이의 두 축을 45도 회전한 X마크다. 각 축의 중심선 길이는 기본 16단위, 원형 내부 11단위다. 선 끝은 둥글게 마감하고 교차부는 하나의 면으로 연결한다.

원형은 지름 20단위이며 line은 바깥 지름을 유지한 테두리, fill은 X마크 모양의 실제 투명 영역을 사용한다.

macOS 데모 빌드, AppKit의 16·24·32pt 렌더링과 세 소스 굵기 간 SVG 경로 구조 일치를 확인했다. SF Symbols 앱 가져오기 검증은 아직 수행하지 않았다.
