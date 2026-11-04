# Asset catalog and specifications

This document lists public symbol names, authoring details, and validation coverage. See the [README](../README.md#usage) for usage and the [authoring guide](symbol-authoring.md#adding-assets-to-the-package) for registration steps.

## Available assets

Public names are defined in [BrianSymbol](../Sources/BrianSymbols/BrianSymbols.swift), and distribution sources are maintained in the [asset catalog](../Sources/BrianSymbols/Resources/BrianSymbols.xcassets). All currently available assets are monochrome and use Monochrome rendering.

The list and individual specifications are alphabetized by asset name.

| Subject | Base / Line case | Fill case | Asset name |
|---|---|---|---|
| [Checkmark](#checkmark) | `.checkmark` | — | `brian.checkmark` |
| [Circle checkmark](#checkmark) | `.checkmarkCircle` | `.checkmarkCircleFill` | `brian.checkmark.circle`, `brian.checkmark.circle.fill` |
| [Down chevron](#chevron) | `.chevronDown` | — | `brian.chevron.down` |
| [Circle down chevron](#chevron-circle) | `.chevronDownCircle` | `.chevronDownCircleFill` | `brian.chevron.down.circle`, `brian.chevron.down.circle.fill` |
| [Left chevron](#chevron) | `.chevronLeft` | — | `brian.chevron.left` |
| [Circle left chevron](#chevron-circle) | `.chevronLeftCircle` | `.chevronLeftCircleFill` | `brian.chevron.left.circle`, `brian.chevron.left.circle.fill` |
| [Right chevron](#chevron) | `.chevronRight` | — | `brian.chevron.right` |
| [Circle right chevron](#chevron-circle) | `.chevronRightCircle` | `.chevronRightCircleFill` | `brian.chevron.right.circle`, `brian.chevron.right.circle.fill` |
| [Up chevron](#chevron) | `.chevronUp` | — | `brian.chevron.up` |
| [Circle up chevron](#chevron-circle) | `.chevronUpCircle` | `.chevronUpCircleFill` | `brian.chevron.up.circle`, `brian.chevron.up.circle.fill` |
| [Ellipsis](#ellipsis) | `.ellipsis` | — | `brian.ellipsis` |
| [Circle ellipsis](#ellipsis) | `.ellipsisCircle` | `.ellipsisCircleFill` | `brian.ellipsis.circle`, `brian.ellipsis.circle.fill` |
| [Gear](#gearshape) | `.gearshape` | `.gearshapeFill` | `brian.gearshape`, `brian.gearshape.fill` |
| [House](#house) | `.house` | `.houseFill` | `brian.house`, `brian.house.fill` |
| [Three horizontal lines](#line3horizontal) | `.line3Horizontal` | — | `brian.line.3.horizontal` |
| [Circle with three horizontal lines](#line3horizontal) | `.line3HorizontalCircle` | `.line3HorizontalCircleFill` | `brian.line.3.horizontal.circle`, `brian.line.3.horizontal.circle.fill` |
| [Decreasing horizontal lines](#line3horizontal) | `.line3HorizontalDecrease` | — | `brian.line.3.horizontal.decrease` |
| [Circle with decreasing horizontal lines](#line3horizontal) | `.line3HorizontalDecreaseCircle` | `.line3HorizontalDecreaseCircleFill` | `brian.line.3.horizontal.decrease.circle`, `brian.line.3.horizontal.decrease.circle.fill` |
| [Magnifying glass](#magnifyingglass) | `.magnifyingglass` | — | `brian.magnifyingglass` |
| [Circle magnifying glass](#magnifyingglass) | `.magnifyingglassCircle` | `.magnifyingglassCircleFill` | `brian.magnifyingglass.circle`, `brian.magnifyingglass.circle.fill` |
| [Minus](#minus) | `.minus` | — | `brian.minus` |
| [Plus](#plus) | `.plus` | — | `brian.plus` |
| [Square](#square) | `.square` | `.squareFill` | `brian.square`, `brian.square.fill` |
| [Dashed square](#square) | `.squareDashed` | — | `brian.square.dashed` |
| [Dotted square](#square) | `.squareDotted` | — | `brian.square.dotted` |
| [2×2 grid](#squaregrid2x2) | `.squareGrid2x2` | `.squareGrid2x2Fill` | `brian.square.grid.2x2`, `brian.square.grid.2x2.fill` |
| [3×3 grid](#squaregrid3x3) | `.squareGrid3x3` | `.squareGrid3x3Fill` | `brian.square.grid.3x3`, `brian.square.grid.3x3.fill` |
| [Upward square stack](#squarestack3dup) | `.squareStack3dUp` | `.squareStack3dUpFill` | `brian.square.stack.3d.up`, `brian.square.stack.3d.up.fill` |
| [X mark](#xmark) | `.xmark` | — | `brian.xmark` |
| [Circle X mark](#xmark) | `.xmarkCircle` | `.xmarkCircleFill` | `brian.xmark.circle`, `brian.xmark.circle.fill` |

The uncontained `checkmark`, `chevron`, `ellipsis`, `line.3.horizontal`, `line.3.horizontal.decrease`, `magnifyingglass`, `minus`, `plus`, and `xmark` provide only a base shape because line and fill are not distinct for these subjects. The demo classifies them as Line.

## Shared authoring settings

Current assets scale a 24 × 24-unit design by a factor of 4 within the SVG template. The Regular-S origin is (1400, 608), and the baseline is y=696. Interpolation sources are `Ultralight-S`, `Regular-S`, and `Black-S`. General authoring follows the [sizing and alignment guidelines](symbol-sizing.md).

`checkmark` and its circle variants, `xmark` and its circle variants, `chevron`, `chevron circle`, line `gearshape`, `minus`, and `plus` use thicknesses of 0.9, 1.65, and 2.35 design units for Ultralight, Regular, and Black respectively. The transparent inner marks in filled circle symbols use the same thicknesses. These values do not apply to the house's internal spaces or filled gearshape.

Chevron and plus strokes have uniform thickness and are converted to closed filled paths, preserving the same path-command structure across weights.

The catalog SVGs are the editing source of truth. One-off generation and validation scripts and comparison images are not included in the repository. After changes, check size, weight, and color in the demo and update the asset's validation coverage.

None of the current assets have been validated on physical iOS devices, the minimum supported OS versions, with Dynamic Type, or with animation. See the [README](../README.md#installation) for declared platform versions.

## checkmark

The base checkmark centerline is (4, 12) → (9.5, 17.5) → (20, 6.5). Inside circles, it is (7, 12) → (10.5, 15.5) → (17, 8.5). Ends and outer joins are rounded.

The circle has a diameter of 20 units. Line preserves the outer diameter with a border; fill uses a genuinely transparent checkmark cutout.

Validated: macOS demo build, AppKit rendering at 16, 24, and 32pt, and matching SVG path structures across the three source weights. Import into the SF Symbols app has not yet been validated.

## chevron

Chevrons point left, right, up, and down. Rotate the left-facing centerline (15.5, 5) → (8.5, 12) → (15.5, 19) around (12, 12) to preserve proportions across directions. Ends and corners are rounded.

All four directions were checked in the macOS demo build and AppKit rendering at 16, 24, and 32pt across the three source weights.

## chevron circle

Place each of the four directions inside a circle of diameter 20 units. Rotate the inner chevron from the left-facing centerline (14, 8) → (10, 12) → (14, 16), with rounded ends and corners. Apply an optical shift in the pointing direction to align the chevron's area centroid with the circle center. Shifts for Ultralight, Regular, and Black are 0.124, 0.215, and 0.290 units respectively, for both line and fill.

- Line: use the same thickness for the circle border and chevron. Preserve the outer diameter across weights.
- Fill: fill the circle with a genuinely transparent chevron cutout. Preserve the circle silhouette while varying chevron thickness by weight.

Line and fill for all four directions were checked in the macOS demo build and AppKit rendering at 16, 24, and 32pt across the three source weights.

## ellipsis

Three circular dots lie horizontally at y=12. Base dot centers are x=5, 12, and 19; inside circles, x=7, 12, and 17. For Ultralight, Regular, and Black, base radii are 1.25, 1.65, and 2 units; inner-circle radii are 1, 1.3, and 1.6 units.

The base shape has no line/fill distinction. The circle has a diameter of 20 units and line border thicknesses of 0.9, 1.65, and 2.35 units. Fill uses three genuinely transparent dots within the same outer circle.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## gearshape

A single monochrome layer consists of eight teeth and a central circle. Tooth tips retain a flat appearance, with smooth curves joining their corners.

- Line: offset both boundaries equally from the center curve for uniform thickness. Apply the same thickness to the central circle.
- Fill: use a transparent central circle and the same silhouette at every weight.

Validated: macOS demo build and AppKit rendering at 56pt for line and fill across the three source weights. Spacing between tooth boundaries was also checked in the generated coordinates. Small-size comparisons at 16, 24, and 32pt have not yet been validated.

## house

A single monochrome layer consists of a roof, body, and arched door. It uses a low roof, wider shoulder and bottom curves, and a 5.5-unit-wide door with a transparent interior.

- Line: adjust internal spaces for each weight.
- Fill: use the same silhouette at every weight.

Size and alignment were checked on macOS at 16, 24, and 32pt across three weights.

## line.3.horizontal

Three horizontal lines with rounded ends are centered. Base centerline lengths are 16 units at y=6, 12, and 18. The decrease variant uses lengths of 16, 10, and 4 units from top to bottom. Inside circles, lines lie at y=8.5, 12, and 15.5, with lengths of 10 units for the regular variant and 10, 6, and 2 units for decrease.

Base shapes have no line/fill distinction. The circle has a diameter of 20 units; line uses a border, and fill uses genuinely transparent line cutouts. Thicknesses across the three source weights are 0.9, 1.65, and 2.35 units.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## magnifyingglass

A circular lens joins a rounded handle pointing diagonally down and right. The base lens center is (9.7, 9.7), with a centerline radius of 6.4 units and a handle endpoint at (20, 20). Inside circles, the lens center is (10.6, 10.6), its radius is 3.7 units, and the handle ends at (16.3, 16.3). Thicknesses are 0.9, 1.65, and 2.35 units across the three source weights. The lens and handle share one outer contour with a transparent lens interior. The base shape has no separate fill variant.

For both circle variants, scale the inner mark to 90% and align its filled-area centroid with (12, 12). The resulting down-right translations after scaling about the container center are 0.640, 0.615, and 0.593 units per axis for Ultralight, Regular, and Black. The smaller inner mark preserves clearance from the border at Black weight. Line and fill use identical inner geometry.

The circular container has a fixed diameter of 20 units. Line uses a border; fill uses a genuinely transparent magnifying-glass cutout. All variants use closed filled paths with matching command structures across weights.

Validated: macOS demo build, AppKit rendering at 16, 24, and 32pt across the three source weights on a light background, and matching SVG path structures across weights. SF Symbols app import, dark backgrounds, and custom tint have not yet been validated.

## minus

Minus shares the length, thickness, and center of the plus symbol's horizontal line. Its centerline is (4, 12) → (20, 12), with semicircular ends. Only the base shape is provided, without a line/fill distinction.

Validated: macOS demo build and AppKit rendering at 16, 24, and 32pt across the three source weights.

## plus

The horizontal and vertical axes have equal lengths, semicircular ends, and a center at design coordinates (12, 12). Each centerline axis is 16 units long.

Validated: macOS demo build and AppKit rendering at 16, 24, and 32pt across the three source weights.

## square

A square with a corner radius of 5 units occupies a 20 × 20-unit area. Line has a genuinely transparent interior; fill fills the same outer shape. Border thicknesses across the three source weights are 0.9, 1.65, and 2.35 units.

Dotted places 24 circular dots evenly around the perimeter; dashed places 12 rounded dashes. Move the centerline inward with increasing weight to preserve outer dimensions. Neither has a separate fill variant, and the demo classifies both as Line. All shapes use closed filled paths with matching path-command structures across the three weights.

Validated: macOS demo build, SVG structure, and AppKit rendering at a 40pt setting across the three source weights. SF Symbols app import and small-size comparisons at 16, 24, and 32pt have not yet been validated.

## square.grid.2x2

Four rounded squares occupy a 20 × 20-unit area with 2.5-unit gaps. Outer corners begin curving 3 units from the vertex; inner corners are rounded according to thickness. Line thicknesses across the three source weights are 0.9, 1.65, and 2.35 units, with genuinely transparent interiors. Fill fills squares with the same outer shapes.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## square.grid.3x3

Nine rounded squares occupy a 20 × 20-unit area with 2-unit gaps. Outer corners begin curving 1.9 units from the vertex, and inner corners are also rounded. Line uses 70% of the 2×2 grid's thickness to preserve the small interior spaces. Fill fills squares with the same outer shapes.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## square.stack.3d.up

The diamond-shaped top face and two lower layers use closed filled paths with rounded corners. The top outer boundary begins curving 2.4 units from each vertex, and the inner boundary at 1.5 units. The two lower layers also have smooth bends and ends. Line leaves the top interior transparent; fill fills the top face. Lower-layer thicknesses across the three source weights are 0.9, 1.65, and 2.35 units.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## xmark

Two equal-length axes rotated by 45 degrees form an X centered at (12, 12). Each centerline axis is 16 units long in the base shape and 11 units inside circles. Ends are rounded, and the intersection is joined into one filled shape.

The circle has a diameter of 20 units. Line preserves the outer diameter with a border; fill uses a genuinely transparent X cutout.

Validated: macOS demo build, AppKit rendering at 16, 24, and 32pt, and matching SVG path structures across the three source weights. SF Symbols app import has not yet been validated.
