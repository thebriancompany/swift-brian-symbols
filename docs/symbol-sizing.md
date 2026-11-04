# Symbol sizing and alignment

Symbol views provided by the library are intended to occupy the same square layout area for a given size setting. The artwork preserves its proportions while matching optical size and center. This document describes project guidelines for future implementation, not guarantees of the current API.

## What to align

| Property | Guideline |
|---|---|
| Layout area | A square with equal width and height for a given size setting |
| Shape proportions | Preserve the original proportions; do not stretch axes independently to fill the square |
| Optical size | Adjust for comparable visual weight and presence on screen |
| Alignment | Center by default; optically compensate for asymmetric shapes |
| Background | Transparent by default; do not add background shapes just to reserve space |

Visible `.square` and `.square.fill` containers are allowed as part of a symbol's shape. Follow [shape modifiers](symbol-naming.md#shape-modifiers) for container names and fill semantics.

Narrow and solid shapes can appear different in size within the same square. Manage layout consistency and the balance of the artwork separately instead of making every bounding box square.

## Authoring coordinates

Use these values as a starting point for the first assets. They are not Apple requirements; finalize them after checking representative symbols in actual rendering.

- Normalized design area: 24 × 24 units
- Default inner area: centered 20 × 20 units
- Default padding: 2 units on each side
- Optical size and center adjustments are allowed for rounded shapes, asymmetric shapes, and badges

The 20 × 20 inner area is a recommendation and may be exceeded for optical compensation. The final shape at rest must fit within the display area corresponding to 24 × 24. The 2-unit padding is therefore not a mandatory minimum for every shape.

The 24-unit system is for comparing designs. Do not change the entire SF Symbols SVG viewBox to 24 × 24 or remove the template structure. Apply the same proportions within each weight and scale variant.

Use `Regular-S` as the reference variant for the first representative asset. Position the normalized area while preserving the template baseline and margin guides, then compare rendering in a 24pt square frame in the app. Record the template-coordinate area, baseline position, font size, and symbol scale with the authoring source. Other symbols share this reference, with optical corrections to individual shapes. Validate other weights and scales separately.

Do not reuse measurements from the previous multicolor house prototype as the new standard. Settings and validation coverage for the new monochrome house line and fill are recorded in the [house specifications](symbol-assets.md#house). Do not treat 24/20 as a finalized library-wide specification until multicolor filled assets and other representative shapes have also been compared.

Fit horizontal shapes by width and vertical shapes by height, preserving the remaining space. Circles and squares have different areas even with identical outer dimensions; compare them side by side. Record the reason and values for corrections with the authoring source.

## Asset and view responsibilities

Assets define proportions, baseline, side margins, and optical center. SF Symbols uses template guides and margins to align with text and nearby symbols. A square SVG canvas alone does not make the app's display area square. See [Apple's template and alignment guidance](https://developer.apple.com/documentation/technologyoverviews/custom-sf-symbols).

Display views provide the same square frame for the same size setting. Treat font size and frame size as separate values: a 20pt font does not make the symbol's actual width and height both 20pt.

This example illustrates the display structure, not a final public API. It assumes the symbol is in the app's asset catalog.

```swift
Image("brian.color.flower")
    .symbolRenderingMode(.multicolor)
    .font(.system(size: 20, weight: .regular))
    .frame(width: 24, height: 24, alignment: .center)
```

The frame defines the layout area; it does not automatically shrink or clip the artwork. If artwork extends beyond it, adjust the authored size or display size. Do not clip by default or add transparent or hidden paths to force an asset's dimensions.

Consistent frames help align icon columns and text starts in lists. Differences in the artwork's optical size still need to be addressed during authoring.

## Scope and exceptions

- Square layout is the intended default display behavior. Consumers loading assets directly cannot be forced to use a frame.
- For Dynamic Type, scale the artwork and square area using the same policy. Do not place enlarged artwork in a fixed small frame.
- Inline symbols require baseline alignment. Validate text insertion separately from square icon slots.
- Design button hit areas separately from the symbol's square area.
- Artwork may move outside the square during animation. Check surrounding spacing and clipping.

## Size validation

Compare circles, solid squares, horizontal, vertical, and asymmetric symbols alongside complex symbols such as flowers. Start with 16, 24, and 32pt square areas; these values do not define a finalized list of supported sizes.

1. Check that frame width and height match for the same size setting.
2. Check consistent text starts and symbol centers in lists and grids.
3. Compare size and center between monochrome line and fill variants. For multicolor assets, compare optical size across supported rendering modes. Also compare both asset types for the same subject side by side.
4. Check boundaries and internal spaces at small sizes, heavy weights, and large text settings.
5. After applying shape-specific corrections, compare again at other sizes and weights.
