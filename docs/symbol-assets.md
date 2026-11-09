# Asset catalog and specifications

This document lists public symbol names, authoring details, and validation coverage. See the [README](../README.md#usage) for usage and the [authoring guide](symbol-authoring.md#adding-assets-to-the-package) for registration steps.

## Available assets

Public names are defined in [BrianSymbol](../Sources/BrianSymbols/BrianSymbols.swift), and distribution sources are maintained in the [asset catalog](../Sources/BrianSymbols/Resources/BrianSymbols.xcassets). Monochrome assets use Monochrome rendering; color assets support the modes described in their individual specifications.

Color assets follow the [default-color policy](symbol-authoring.md#default-colors-and-customization). See the [demo instructions](../README.md#demo) for preview controls.

The list and individual specifications are alphabetized by asset name.

| Subject | Base / Line case | Fill case | Asset name |
|---|---|---|---|
| [Repeat](#repeat) | `.repeat` | — | `brian.repeat` |
| [Circle repeat](#repeat) | `.repeatCircle` | `.repeatCircleFill` | `brian.repeat.circle`, `brian.repeat.circle.fill` |
| [Bell](#bell) | `.bell` | `.bellFill` | `brian.bell`, `brian.bell.fill` |
| [Circle bell](#bell) | `.bellCircle` | `.bellCircleFill` | `brian.bell.circle`, `brian.bell.circle.fill` |
| [Color bell](#bell) | — | `.colorBell` | `brian.color.bell` |
| [Down arrow](#arrow) | `.arrowDown` | — | `brian.arrow.down` |
| [Circle down arrow](#arrow-circle) | `.arrowDownCircle` | `.arrowDownCircleFill` | `brian.arrow.down.circle`, `brian.arrow.down.circle.fill` |
| [Left arrow](#arrow) | `.arrowLeft` | — | `brian.arrow.left` |
| [Circle left arrow](#arrow-circle) | `.arrowLeftCircle` | `.arrowLeftCircleFill` | `brian.arrow.left.circle`, `brian.arrow.left.circle.fill` |
| [Right arrow](#arrow) | `.arrowRight` | — | `brian.arrow.right` |
| [Circle right arrow](#arrow-circle) | `.arrowRightCircle` | `.arrowRightCircleFill` | `brian.arrow.right.circle`, `brian.arrow.right.circle.fill` |
| [Up arrow](#arrow) | `.arrowUp` | — | `brian.arrow.up` |
| [Circle up arrow](#arrow-circle) | `.arrowUpCircle` | `.arrowUpCircleFill` | `brian.arrow.up.circle`, `brian.arrow.up.circle.fill` |
| [Book](#book) | `.book` | `.bookFill` | `brian.book`, `brian.book.fill` |
| [Circle book](#book-circle) | `.bookCircle` | `.bookCircleFill` | `brian.book.circle`, `brian.book.circle.fill` |
| [Bubble](#bubble) | `.bubble` | `.bubbleFill` | `brian.bubble`, `brian.bubble.fill` |
| [Circle bubble](#bubble) | `.bubbleCircle` | `.bubbleCircleFill` | `brian.bubble.circle`, `brian.bubble.circle.fill` |
| [Calendar](#calendar) | `.calendar` | `.calendarFill` | `brian.calendar`, `brian.calendar.fill` |
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
| [Color book](#colorbook) | — | `.colorBook` | `brian.color.book` |
| [Color bubble](#colorbubble) | — | `.colorBubble` | `brian.color.bubble` |
| [Color calendar](#colorcalendar) | — | `.colorCalendar` | `brian.color.calendar` |
| [Color folder](#colorfolder) | — | `.colorFolder` | `brian.color.folder` |
| [Color microphone](#microphone) | — | `.colorMicrophone` | `brian.color.microphone` |
| [Color pencil](#colorpencil) | — | `.colorPencil` | `brian.color.pencil` |
| [Color trash](#colortrash) | — | `.colorTrash` | `brian.color.trash` |
| [Ellipsis](#ellipsis) | `.ellipsis` | — | `brian.ellipsis` |
| [Circle ellipsis](#ellipsis) | `.ellipsisCircle` | `.ellipsisCircleFill` | `brian.ellipsis.circle`, `brian.ellipsis.circle.fill` |
| [Folder](#folder) | `.folder` | `.folderFill` | `brian.folder`, `brian.folder.fill` |
| [Gear](#gearshape) | `.gearshape` | `.gearshapeFill` | `brian.gearshape`, `brian.gearshape.fill` |
| [House](#house) | `.house` | `.houseFill` | `brian.house`, `brian.house.fill` |
| [Three horizontal lines](#line3horizontal) | `.line3Horizontal` | — | `brian.line.3.horizontal` |
| [Circle with three horizontal lines](#line3horizontal) | `.line3HorizontalCircle` | `.line3HorizontalCircleFill` | `brian.line.3.horizontal.circle`, `brian.line.3.horizontal.circle.fill` |
| [Decreasing horizontal lines](#line3horizontal) | `.line3HorizontalDecrease` | — | `brian.line.3.horizontal.decrease` |
| [Circle with decreasing horizontal lines](#line3horizontal) | `.line3HorizontalDecreaseCircle` | `.line3HorizontalDecreaseCircleFill` | `brian.line.3.horizontal.decrease.circle`, `brian.line.3.horizontal.decrease.circle.fill` |
| [Magnifying glass](#magnifyingglass) | `.magnifyingglass` | — | `brian.magnifyingglass` |
| [Circle magnifying glass](#magnifyingglass) | `.magnifyingglassCircle` | `.magnifyingglassCircleFill` | `brian.magnifyingglass.circle`, `brian.magnifyingglass.circle.fill` |
| [Microphone](#microphone) | `.microphone` | `.microphoneFill` | `brian.microphone`, `brian.microphone.fill` |
| [Circle microphone](#microphone) | `.microphoneCircle` | `.microphoneCircleFill` | `brian.microphone.circle`, `brian.microphone.circle.fill` |
| [Minus](#minus) | `.minus` | — | `brian.minus` |
| [Pencil](#pencil) | `.pencil` | — | `brian.pencil` |
| [Circle pencil](#pencil) | `.pencilCircle` | `.pencilCircleFill` | `brian.pencil.circle`, `brian.pencil.circle.fill` |
| [Person](#person) | `.person` | `.personFill` | `brian.person`, `brian.person.fill` |
| [Circle person](#person-circle) | `.personCircle` | `.personCircleFill` | `brian.person.circle`, `brian.person.circle.fill` |
| [Phone](#phone) | `.phone` | `.phoneFill` | `brian.phone`, `brian.phone.fill` |
| [Circle phone](#phone) | `.phoneCircle` | `.phoneCircleFill` | `brian.phone.circle`, `brian.phone.circle.fill` |
| [Phone down](#phone-down) | `.phoneDown` | `.phoneDownFill` | `brian.phone.down`, `brian.phone.down.fill` |
| [Circle phone down](#phone-down) | `.phoneDownCircle` | `.phoneDownCircleFill` | `brian.phone.down.circle`, `brian.phone.down.circle.fill` |
| [Plus](#plus) | `.plus` | — | `brian.plus` |
| [Square](#square) | `.square` | `.squareFill` | `brian.square`, `brian.square.fill` |
| [Dashed square](#square) | `.squareDashed` | — | `brian.square.dashed` |
| [Dotted square](#square) | `.squareDotted` | — | `brian.square.dotted` |
| [2×2 grid](#squaregrid2x2) | `.squareGrid2x2` | `.squareGrid2x2Fill` | `brian.square.grid.2x2`, `brian.square.grid.2x2.fill` |
| [3×3 grid](#squaregrid3x3) | `.squareGrid3x3` | `.squareGrid3x3Fill` | `brian.square.grid.3x3`, `brian.square.grid.3x3.fill` |
| [Upward square stack](#squarestack3dup) | `.squareStack3dUp` | `.squareStack3dUpFill` | `brian.square.stack.3d.up`, `brian.square.stack.3d.up.fill` |
| [Text document](#textdocument) | `.textDocument` | `.textDocumentFill` | `brian.text.document`, `brian.text.document.fill` |
| [Text format](#textformat) | `.textformat` | — | `brian.textformat` |
| [Trash](#trash) | `.trash` | `.trashFill` | `brian.trash`, `brian.trash.fill` |
| [Circle trash](#trash-circle) | `.trashCircle` | `.trashCircleFill` | `brian.trash.circle`, `brian.trash.circle.fill` |
| [X mark](#xmark) | `.xmark` | — | `brian.xmark` |
| [Circle X mark](#xmark) | `.xmarkCircle` | `.xmarkCircleFill` | `brian.xmark.circle`, `brian.xmark.circle.fill` |

The uncontained `arrow`, `checkmark`, `chevron`, `ellipsis`, `line.3.horizontal`, `line.3.horizontal.decrease`, `magnifyingglass`, `minus`, `plus`, `textformat`, and `xmark` provide only a base shape because line and fill are not distinct for these subjects. The demo classifies them as Line.

The uncontained `pencil` intentionally uses a filled design as its only base shape, without a separate outline variant. The demo also classifies it as Line because its name has no `.fill` suffix. See the [pencil specification](#pencil) for its geometry and circle variants.

## Shared authoring settings

Current assets scale a 24 × 24-unit design by a factor of 4 within the SVG template. The Regular-S origin is (1400, 608), and the baseline is y=696. Interpolation sources are `Ultralight-S`, `Regular-S`, and `Black-S`. General authoring follows the [sizing and alignment guidelines](symbol-sizing.md).

`arrow`, `checkmark` and its circle variants, `xmark` and its circle variants, `chevron`, `chevron circle`, line `gearshape`, `minus`, and `plus` use thicknesses of 0.9, 1.65, and 2.35 design units for Ultralight, Regular, and Black respectively. The transparent inner marks in filled circle symbols use the same thicknesses. These values do not apply to the house's internal spaces or filled gearshape.

Chevron and plus strokes have uniform thickness and are converted to closed filled paths, preserving the same path-command structure across weights.

The catalog SVGs are the editing source of truth. One-off generation and validation scripts and comparison images are not included in the repository. After changes, check size, weight, and color in the demo and update the asset's validation coverage.

None of the current assets have been validated on physical iOS devices, the minimum supported OS versions, with Dynamic Type, or with animation. See the [README](../README.md#installation) for declared platform versions.

## arrow

Four uncontained directions with rounded shafts, heads, and endpoints. The right-facing shaft runs from (4, 12) to (20, 12), and the head follows (13, 5) → (20, 12) → (13, 19) in design units. Rotate around (12, 12) for down, left, and up. Closed filled paths reuse the chevron and minus thicknesses and template guides, with matching path topology across the three source weights. No separate fill variant is provided.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## arrow circle

Four directions inside a circle of diameter 20 design units. The right-facing shaft runs from (7, 12) to (17, 12), with a head following (12, 7) → (17, 12) → (12, 17). Rotate around (12, 12) for the other directions. The arrow is a single closed contour with rounded ends and tip, avoiding overlapping cutout paths.

Line uses the shared arrow thicknesses for both the circular border and inner arrow. Fill preserves the same outer circle and uses a transparent arrow cutout. Both variants keep the same inner geometry across Ultralight, Regular, and Black.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. Fill cutouts reveal the background without overlapping seams. SF Symbols app import has not yet been validated.

## book

The line book uses one continuous outer contour and one central binding stroke. Both are expanded into closed filled paths with round joins and caps at uniform widths of 0.9, 1.65, and 2.35 units across Ultralight, Regular, and Black. The central stroke meets the contour endpoints without overlapping page borders or a doubled seam. Fill uses rounded solid pages separated by a transparent binding 1.2, 1.5, and 1.78 units wide across the three weights.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## book circle

A 20-unit-diameter circle contains the book at 61% scale. Line combines an outlined circle and outlined pages. Fill uses transparent page silhouettes cut out of the filled circle, preserving the binding between them. Circle border thicknesses follow the base book weights.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## bubble

Oval chat bubble with a lower-left tail in the shared 24-unit area. Line and fill share the outer silhouette. Line thicknesses are 0.9, 1.65, and 2.35 units across Ultralight-S, Regular-S, and Black-S. Circle variants scale the subject to 65% inside a 20-unit circle; circle fill uses a transparent bubble cutout with opposite contour winding. Outlines are expanded from a uniform-width centerline with round joins, including the tail, then sampled into 256-point closed contours for matching topology across source weights. Filled variants reuse the corresponding outer contour.

## colorBubble

White body (`#FFFFFF`, Primary) with a light cool-gray boundary (`#C7CCD2`, Secondary), using fixed SVG multicolor fills. The boundary is 55% of the corresponding monochrome line thickness. Monochrome merges the two regions into a solid bubble silhouette; Palette and Hierarchical expose the two roles.

Validation for bubble assets: XML, catalog references, closed paths, and source-weight topology checked. The macOS demo builds successfully; compiled assets were rendered with AppKit at 32pt Regular on light and dark backgrounds, including the authored white/gray color appearance. SF Symbols app import, additional sizes and weights, explicit rendering modes, and minimum OS validation remain pending.

## calendar

A rounded 20 × 19-unit page with two binding tabs and six date marks. Line uses the shared 0.9, 1.65, and 2.35-unit border thicknesses. Date marks have rounded corners with a radius of 36% of their width. Fill uses transparent date cutouts and an inset rounded separator between the header and the date area. Both preserve the same path topology across the three source weights.

Validated: macOS demo build, matching path-command structures across source weights, and AppKit rendering at 64pt Regular. SF Symbols app import and small-size rendering have not yet been validated.

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

## color.book

An open book uses a blue outline (`#3979D6`) and one continuous warm paper layer (`#FFF4DC`), giving both facing pages the same default color. The outline and central binding share the line book’s uniform stroke widths and rounded joins. Fixed SVG colors provide the multicolor appearance. Primary maps to the blue outline and Secondary to the paper for Palette and Hierarchical rendering. In Monochrome, the paper is hidden and the uniform outline remains. No separate color line variant is provided.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. Explicit Multicolor rendering preserves the blue cover and matching paper colors. SF Symbols app import, minimum-OS behavior, and SwiftUI rendering-mode overrides have not yet been validated.

## color.calendar

A filled calendar with an off-white page (`#F0F2F5`), red header and binding tabs (`#EF4444`), and slate date marks (`#475569`) with the same rounded corners as the monochrome variants. Palette roles are Primary for the header, Secondary for dates, and Tertiary for the page. Monochrome hides the date overlay and exposes actual transparent date cutouts in the page.

Validated: macOS demo build, matching path-command structures across source weights, and AppKit Monochrome and Multicolor rendering at 64pt Regular. SF Symbols app import, small sizes, Palette, Hierarchical, and the bare SwiftUI initializer have not yet been validated.

## color.folder

A flat folder consists of a light-blue back with a raised tab, an off-white sheet, and a blue front. It uses solid fills and rounded corners without gradients, perspective, or shadows. All weights retain the same 20 × 17.6-unit bounds, from (2, 3.4) to (22, 21). The back and paper stay fixed. Only the front’s upper edge moves down by up to 0.65 units at Ultralight and up by up to 0.65 units at Black, varying the front panel thickness while keeping its width and bottom edge fixed. The paper starts at (6.2, 6.7), shifted 0.8 units left and 0.6 units down to expose more of the back.

Select a mode with `.symbolRenderingMode(...)`. Color behavior depends on that mode:

| Mode | Color behavior |
|---|---|
| Multicolor | The front uses fixed blue (`#3298F5`); the back uses the same blue at 50% opacity. The paper keeps its fixed off-white color (`#F4FAFF`). Foreground styles do not change these colors. |
| Monochrome | One color covers the folder. The paper region behind the front becomes transparent to preserve separation. |
| Hierarchical | One base color is rendered at different opacities: Primary for the front, Secondary for the back, and Tertiary for the paper. |
| Palette | Three supplied colors apply to the front, back, and paper, respectively. The paper color is customizable. |

See the [package rendering example](symbol-authoring.md#using-the-color-folder) for tint and palette configuration.

Validated: macOS demo build and SwiftUI rendering at Regular 64pt with Small image scale, including default rendering under inherited foreground styles and all four explicit modes. The default and Multicolor appearances retain their authored colors. SF Symbols app import has not yet been validated.

## color.pencil

A diagonal filled pencil points toward the lower left, with a rounded eraser at the upper right. Five flat regions use yellow-orange lacquer (`#F5A623`), natural wood (`#E7BC88`), graphite (`#41434A`), a silver band (`#BFC5CC`), and a coral eraser (`#EA836B`). These colors follow the supplied reference without reproducing its texture or highlights. The silhouette is constant across source weights and matches the uncontained monochrome pencil.

Multicolor preserves all five fixed SVG colors. Monochrome merges them into one recognizable silhouette. Palette and Hierarchical assign Primary to the lacquer, Secondary to wood, graphite, and eraser, and Tertiary to the band.

The bare initializer displays the curated colors. Select Palette to supply group colors:

```swift
import SwiftUI
import BrianSymbols

Image(brianSymbol: .colorPencil)

Image(brianSymbol: .colorPencil)
    .symbolRenderingMode(.palette)
    .foregroundStyle(.purple, .orange, .gray)
```

See the [default-color policy](symbol-authoring.md#default-colors-and-customization) for rendering behavior and future asset requirements.

Validation coverage is recorded with the [pencil family](#pencil).

## color.trash

A filled tapered bin uses one continuous gray silhouette (`#969BA3`) for the body, lid, and handle, with two light-gray grooves (`#E1E3E6`). There is no gap or contrasting dividing line between the lid and body. Fixed SVG colors supply the default Multicolor appearance. Primary maps to the silhouette and Secondary to the grooves. Monochrome hides the groove layer, revealing transparent slots in the body. No separate color line variant is provided.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and SwiftUI rendering at Regular 48pt with Small image scale on light and dark backgrounds. Default rendering, inherited foreground styles, and explicit Multicolor preserve the authored colors. Monochrome, Hierarchical, and Palette were also checked. SF Symbols app import has not yet been validated.

## ellipsis

Three circular dots lie horizontally at y=12. Base dot centers are x=5, 12, and 19; inside circles, x=7, 12, and 17. For Ultralight, Regular, and Black, base radii are 1.25, 1.65, and 2 units; inner-circle radii are 1, 1.3, and 1.6 units.

The base shape has no line/fill distinction. The circle has a diameter of 20 units and line border thicknesses of 0.9, 1.65, and 2.35 units. Fill uses three genuinely transparent dots within the same outer circle.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## folder

A rounded folder with a raised upper-left tab occupies a 20 × 16-unit area, from (2, 4) to (22, 20). The tab transitions smoothly into the upper edge of the body. Line and fill share the same outer silhouette, with no decorative interior seam. Line uses a transparent inset with thicknesses of 0.9, 1.65, and 2.35 units across the three source weights. Fill keeps the same silhouette at every weight.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt across Ultralight, Regular, and Black on a light background. White and purple rendering were also checked on a dark background. SF Symbols app import has not yet been validated.

## gearshape

A single monochrome layer consists of eight teeth and a central circle. Tooth tips retain a flat appearance, with smooth curves joining their corners.

- Line: offset both boundaries equally from the center curve for uniform thickness. Apply the same thickness to the central circle.
- Fill: use a transparent central circle and the same silhouette at every weight.

Validated: macOS demo build and AppKit rendering at 56pt for line and fill across the three source weights. Spacing between tooth boundaries was also checked in the generated coordinates. Small-size comparisons at 16, 24, and 32pt have not yet been validated.

## house

A single monochrome layer consists of a roof, body, and arched door. It uses a low roof, wider shoulder and bottom curves, and a 5.5-unit-wide door with a transparent interior.

- Line: preserve the original outer silhouette exactly and inset the inner contour by a uniform 0.9, 1.65, or 2.35 units. Roof, walls, and the arched doorway use the same offset distance. The inner contour is sampled at 256 perimeter positions to match path-command structures across the three source weights. Intermediate-weight interpolation has not yet been validated.
- Fill: use the same silhouette at every weight.

Before the uniform-inset revision, size and alignment were checked on macOS at 16, 24, and 32pt across three weights. The revised line asset passed the macOS demo build and AppKit rendering checks on light and dark backgrounds at these combinations: 16pt Ultralight, 24pt Regular, and 32pt Black. Other size–weight combinations have not been rechecked for this revision. The fill asset is unchanged.

## line.3.horizontal

Three horizontal lines with rounded ends are centered. Base centerline lengths are 16 units at y=6, 12, and 18. The decrease variant uses lengths of 16, 10, and 4 units from top to bottom. Inside circles, lines lie at y=8.5, 12, and 15.5, with lengths of 10 units for the regular variant and 10, 6, and 2 units for decrease.

Base shapes have no line/fill distinction. The circle has a diameter of 20 units; line uses a border, and fill uses genuinely transparent line cutouts. Thicknesses across the three source weights are 0.9, 1.65, and 2.35 units.

Validated: macOS demo build, SVG structure, and matching path-command structures across the three source weights. SF Symbols app import and actual app rendering have not yet been validated.

## magnifyingglass

A circular lens joins a rounded handle pointing diagonally down and right. The base lens center is (9.7, 9.7), with a centerline radius of 6.4 units and a handle endpoint at (20, 20). Inside circles, the lens center is (10.6, 10.6), its radius is 3.7 units, and the handle ends at (16.3, 16.3). Thicknesses are 0.9, 1.65, and 2.35 units across the three source weights. The lens and handle share one outer contour with a transparent lens interior. The base shape has no separate fill variant.

For both circle variants, scale the inner mark to 90% and align its filled-area centroid with (12, 12). The resulting down-right translations after scaling about the container center are 0.640, 0.615, and 0.593 units per axis for Ultralight, Regular, and Black. The smaller inner mark preserves clearance from the border at Black weight. Line and fill use identical inner geometry.

The circular container has a fixed diameter of 20 units. Line uses a border; fill uses a genuinely transparent magnifying-glass cutout. All variants use closed filled paths with matching command structures across weights.

Validated: macOS demo build, AppKit rendering at 16, 24, and 32pt across the three source weights on a light background, and matching SVG path structures across weights. SF Symbols app import, dark backgrounds, and custom tint have not yet been validated.

## microphone

An upright rounded capsule and U-shaped support with an integrated stem and foot occupy the shared 24-unit area. Line uses an inset capsule; fill uses a solid capsule. Support thicknesses are 0.9, 1.65, and 2.35 units for Ultralight-S, Regular-S, and Black-S. Circle variants scale the subject to 65% inside a 20-unit circle. Circle fill uses a solid capsule and support as transparent cutouts. Closed paths use opposite contour winding for holes, with matching command topology across the three source weights.

Color microphone uses a charcoal capsule (`#36383B`, Primary) and gray support (`#707378`, Secondary). Fixed SVG colors define Multicolor; Palette and Hierarchical use the two roles. Monochrome preserves the gap between the capsule and support.

Validated: macOS demo build; XML, catalog references, closed paths, and matching weight topology; AppKit rendering of all five compiled assets at Ultralight, Regular, and Black, including explicit Multicolor. SF Symbols app import, minimum OS versions, SwiftUI default colors, and remaining rendering modes remain pending.

## minus

Minus shares the length, thickness, and center of the plus symbol's horizontal line. Its centerline is (4, 12) → (20, 12), with semicircular ends. Only the base shape is provided, without a line/fill distinction.

Validated: macOS demo build and AppKit rendering at 16, 24, and 32pt across the three source weights.

## pencil

The pencil is authored vertically around the origin, from y=−11 to 11 with a half-width of 2.8 units, then rotated 45 degrees and centered at (12, 12). The tip points lower left. The base pencil uses a solid body and rounded eraser, separated by a transparent gap of 0.7 times the shared source-weight thickness. It intentionally provides only `.pencil`, with no separate `.pencilFill` variant. Decorative lacquer facets and metal grooves are omitted.

Circle variants scale the pencil uniformly to 67% inside the shared 20-unit circle. Both circle variants use the same solid pencil with a separated eraser. The line circle contains the pencil; the filled circle cuts out the body and eraser with reverse-wound paths, preserving real transparency and a visible bridge between them. The circle border follows the shared weight thicknesses.

Validated: macOS demo build, AppKit rendering at Regular weight at 16, 24, 32, and 72pt, and matching path-command structures across Ultralight-S, Regular-S, and Black-S. The rendered comparison covered all four assets, including the default multicolor appearance and transparent circle cutout. The color pencil was rendered through SwiftUI at Regular 64pt with Small image scale: default and Multicolor rendering preserve the SVG colors under inherited foreground styles, while explicit Monochrome, Hierarchical, and Palette apply the supplied styles. Other rendered weights, dark backgrounds, SF Symbols app import, physical devices, and minimum supported OS versions have not been checked.

## person

A circular head above rounded shoulders, with a clear gap between the two contours. The head is centered at (12, 7.25) with radius 4.25 design units; the body spans x=5–19 and y=12.5–22. The shoulders form a semicircle of radius 7, and the lower corners have radius 2.5. Inner contours use concentric arcs with each radius reduced by the line thickness, keeping the outline uniform through the shoulders, corners, and bottom edge. Line uses closed outer and inner contours with thicknesses of 0.9, 1.65, and 2.35 units for Ultralight, Regular, and Black. Fill uses solid head and body contours, expanding each by 0.18 times the difference from the Regular thickness.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## person circle

A person scaled to 65% around (12, 12) inside a circle of diameter 20 design units. Line retains the outlined head and shoulders, with the shared circle border thicknesses. Fill uses a solid circle with a transparent person silhouette cutout. Opposite contour winding preserves transparency without white overlays. Both variants retain matching path topology across the three source weights.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## phone

A diagonal telephone handset with rounded earpiece and mouthpiece ends, spanning 20 × 20 design units. Line uses a closed outline converted from rounded strokes at the shared source-weight thicknesses, then uniformly fitted to the same outer bounds. Each outline contour is sampled at 240 evenly spaced points to preserve matching interpolation topology across weights. Fill reuses the exact outer contour of Line at each source weight, removing only the inner contour. This keeps the silhouette, bounds, and rounded ends identical between the pair.

Circle variants use the shared 20-unit circle and a solid handset scaled to 12.25 units. Line varies the circle border across the three source weights; fill uses an oppositely wound handset contour as a transparent cutout. No white overlays or decorative details are included.

Validated: macOS demo build, matching path-command structures across all three source weights, and AppKit rendering of all four assets at Ultralight, Regular, and Black on a light background (48pt, Small scale, drawn in 72pt frames). Small-size legibility, dark backgrounds, SF Symbols app import, physical devices, and minimum supported OS versions have not been checked.

## phone down

The phone handset rotated 135 degrees clockwise into a horizontal hang-up position, with both ends facing down. The rotated artwork is uniformly scaled to 20 design units wide and centered at (12, 12), preserving its proportions. Line and fill reuse the phone contours and source-weight topology. Fill shares the exact outer contour of Line at each weight, so the pair has identical silhouettes and bounds.

Circle variants fit the handset to 12.25 design units wide inside the shared 20-unit circle. Line uses the shared circle border thicknesses and a solid handset; fill preserves a transparent handset cutout with opposite winding.

Validated: macOS demo build, matching path-command structures across all three source weights, and AppKit rendering of all four assets at Ultralight, Regular, and Black on a light background (48pt, Small scale, proportionally fitted in 72pt frames). Small-size legibility, dark backgrounds, SF Symbols app import, physical devices, and minimum supported OS versions have not been checked.

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

## text.document

A centered 16 × 20-unit rounded document contains three rounded text lines, with the final line shortened to 67%. The corner radius is 2.6 units. Line preserves a transparent interior; fill uses transparent text cutouts. Border and text thicknesses are 0.9, 1.65, and 2.35 units across Ultralight, Regular, and Black.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt. Monochrome variants were also checked with white and purple on a dark background. SF Symbols app import has not yet been validated.

## textformat

An uppercase A and a double-storey lowercase a share a baseline at y=19. Outlines use the rounded system sans-serif design. Ultralight and Regular use their corresponding font weights; the Black symbol source uses Semibold outlines to preserve legibility and avoid an excessively heavy typographic shape. All sources share Regular’s per-letter bounds, baseline, and spacing within a 20-unit width and 14-unit cap height, keeping the Aa proportions stable when changing symbol weight. Both letters use closed filled paths with transparent counters and matching path-command structures across weights. Only the base shape is provided because a separate fill variant would not convey a distinct shape.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and black-on-white AppKit rendering at 16, 24, and 32pt across those weights. SF Symbols app import and dark-background rendering have not yet been validated.

## trash

A single rounded contour joins the raised handle, projecting lid, and tapered body without a gap or separate dividing stroke. The lid spans x=4.5–19.5 at y=6.25; the body tapers to x=7–17 at y=21. Line hollows out the body and handle; Fill keeps a solid body with two transparent vertical slots. Both use thicknesses of 0.9, 1.65, and 2.35 design units across Ultralight, Regular, and Black. The connected contour also prevents overlapping cutout seams in circle variants.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## trash circle

A 20-unit-diameter circle contains the line trash shape at 60% scale around (12, 12), without inner bars. Inner strokes use 80% of the base trash thickness, while the circle border uses the full shared thickness. Circle Fill preserves the same inner geometry as a transparent outline cutout in a solid circle.

Validated: macOS demo build, matching SVG path-command structures across the three source weights, and AppKit rendering at 16, 24, and 32pt (Ultralight, Regular, and Black respectively) on light and dark backgrounds. SF Symbols app import has not yet been validated.

## xmark

Two equal-length axes rotated by 45 degrees form an X centered at (12, 12). Each centerline axis is 16 units long in the base shape and 11 units inside circles. Ends are rounded, and the intersection is joined into one filled shape.

The circle has a diameter of 20 units. Line preserves the outer diameter with a border; fill uses a genuinely transparent X cutout.

Validated: macOS demo build, AppKit rendering at 16, 24, and 32pt, and matching SVG path structures across the three source weights. SF Symbols app import has not yet been validated.

## repeat

Two opposing bent arrows form the repeat mark. Arrowhead tips and shoulders use a 0.6-unit corner radius, scaled proportionally inside circle variants. The base symbol has no separate fill variant; circle variants scale the subject to 72% inside the shared 20-unit circle. Circle fill uses transparent arrow cutouts. All three assets provide matching closed-path topology across Ultralight-S, Regular-S, and Black-S.

Validation: SVG structure and catalog references checked. SF Symbols import, app rendering, and device validation remain pending.

## bell

Rounded bell with a crown and a separate clapper, authored in the shared 24-unit area. Line uses an inset transparent body with thicknesses of 0.9, 1.65, and 2.35 units. Fill keeps the solid silhouette. Circle variants scale the bell to 65% inside a 20-unit circle; circle fill cuts the solid bell out of the container. Closed-path command topology matches across all three source weights.

Color bell uses a yellow body (`#F7C928`, Primary) and golden crown and clapper (`#C88B12`, Secondary). Fixed SVG colors provide the default Multicolor appearance; Palette and Hierarchical use these two roles. Monochrome retains the silhouette and the clapper gap.

Validation: XML, catalog references, closed paths, and weight topology checked. SF Symbols import and app rendering, including color modes and minimum OS versions, remain pending.

Repeat and monochrome bell outlines use direct paths under each weight group and opposite contour winding for transparent holes, matching existing catalog assets without relying on nested transforms or even-odd fills.
