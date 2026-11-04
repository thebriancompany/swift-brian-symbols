# Symbol types and naming conventions

Symbols are classified as multicolor or monochrome. Multicolor symbols provide filled shapes only; monochrome symbols provide simplified line and fill variants. This document defines the project's types and shapes, independently of Apple's naming conventions.

## Scope by symbol type

| Type | Shapes | Default appearance | Color customization |
|---|---|---|---|
| Multicolor | Filled only | Multiple author-defined colors | Palette roles, monochrome, black and white, and hierarchical rendering |
| Monochrome | Line and fill | One color | Overall color, including solid black or white |

Multicolor describes an asset designed with multiple color roles. Follow the [default-color policy](symbol-authoring.md#default-colors-and-customization) so the bare initializer displays curated SVG colors and explicit rendering modes provide customization. Rendering it in Monochrome mode does not change its asset type. Monochrome assets do not include color-specific decoration or custom multicolor palettes. The project's supported scope is distinct from everything SF Symbols can technically render.

Both types may depict the same subject, but add them only for an actual use case. A monochrome version is a separate design simplified for small sizes, rather than a multicolor asset with its colors removed.

## Shapes and simplification

- Do not create line variants of multicolor symbols. Fill the main regions to express color roles.
- Design monochrome line and fill variants as a pair. For shapes such as arrows or plus signs where the distinction is not meaningful, specify the exception and available shape before authoring instead of duplicating an asset.
- Keep only the silhouette and internal details needed for recognition in monochrome symbols. Remove decorative lines, small windows, textures, and unnecessary double borders.
- For example, a monochrome house needs only a rounded roof, body, and door if these identify it. Do not retain roof boundaries or door borders created for multicolor rendering.
- Do not divide multicolor regions merely to add decoration. Separate meaningful regions, and do not add unnecessary shapes to fill all three palette roles.
- Use soft corners and simple curves for both types. Remove or widen details that merge at small sizes.
- Line is the visual name for an outline shape. Author distribution paths as closed filled shapes.
- Monochrome line and fill variants share the same square layout area and optical center. Compare size and visual weight as the filled area increases.

Fill describes a shape, not a selected state. Each consuming interface decides which shape to use for its state.

## Asset names

Use the `color` namespace for multicolor assets so the type is visible in the name. Monochrome assets retain the existing format.

| Type | Format | Example |
|---|---|---|
| Monochrome line | `brian.<subject>[.<direction>][.slash][.<container>]` | `brian.house` |
| Monochrome fill | Monochrome line name + `.fill` | `brian.house.fill` |
| Multicolor filled | `brian.color.<subject>[.<direction>][.slash][.<container>]` | `brian.color.house` |

Brackets indicate optional components and are not part of the name. Multicolor shapes are always filled, so do not append `.fill` or create `.line` or `.outline` variants. `color` identifies the asset type, not the current rendering mode or a specific color.

Use lowercase English names. Place the direction immediately after the subject: `brian.arrow.right` contains the subject `arrow` and direction `right`. Treat compound nouns such as `magnifyingglass` as one subject rather than separating each word with a period.

Do not register synonyms such as `home` and `house` for the same subject within a type. When both types depict a subject, share its name, as in `brian.house` and `brian.color.house`. Exclude screen position, specific colors, sizes, weights, and version numbers. Expose Swift APIs as lowerCamelCase cases in `BrianSymbol`; for example, `brian.house.fill` becomes `.houseFill`. Follow [Adding assets to the package](symbol-authoring.md#adding-assets-to-the-package) to register them.

Keep `BrianSymbol` case declarations, the asset list, and individual specifications alphabetized by asset name. Directions follow `down` → `left` → `right` → `up`, with variants placed after their base name.

## Shape modifiers

Add `slash`, `circle`, or `square` only when the shape requires them. Use either `circle` or `square` as the container. Combine modifiers in this order: subject → direction → slash → container. Append `.fill` last for monochrome fill variants.

For monochrome `brian.heart.circle.fill`, fill refers to the circular container; it does not promise a filled inner heart. Initially, do not offer independent combinations of subject and container fills. Multicolor `brian.color.heart.circle` also uses a filled container, with color contrast distinguishing the subject in its default appearance. For Monochrome mode, follow [Monochrome rendering of multicolor containers](symbol-authoring.md#monochrome-rendering-of-multicolor-containers).

`square` means a visible square container, not the square layout area shared by all symbols. Do not add a container solely to reserve space.

## Examples and checks

| Request | Asset example | Rendering |
|---|---|---|
| Simple house outline | `brian.house` | Monochrome |
| Simple filled house | `brian.house.fill` | Monochrome |
| House with default colors | `brian.color.house` | Multicolor |
| House with a custom palette | `brian.color.house` | Palette |
| Multicolor design in one color | `brian.color.house` | Monochrome, preserving the shape |

The monochrome house line and fill assets exist. The `brian.color.house` entries in the table above illustrate naming rules; that asset is not provided. See the [asset catalog](symbol-assets.md) for available multicolor symbols. Names do not guarantee automatic shape generation or switching; author each asset and select it explicitly.

Before adding an asset, check its type, available shapes, modifier order, and details needed at small sizes. Apply the [sizing and alignment guidelines](symbol-sizing.md) and [authoring completion criteria](symbol-authoring.md#completion-criteria).
