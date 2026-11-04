# Custom symbol authoring guide

First choose multicolor or monochrome according to the [type and shape rules](symbol-naming.md). Multicolor assets define multiple color roles in a filled shape; monochrome assets apply one color to simplified line and fill variants. The flower is a hypothetical example for vector authoring and annotation; it is not an available asset. The package usage example uses the color folder.

## Rendering modes for multicolor symbols

| Style | Mode | Defined during authoring | Specified by the consumer |
|---|---|---|---|
| Default colors | Multicolor | Fixed SVG colors per layer | None; uses authored SVG colors |
| Custom single color | Monochrome | A shape recognizable in one color | Overall color |
| Custom palette | Palette | Primary, Secondary, and Tertiary groups | Colors for up to three groups |
| Black and white | Monochrome or Palette | Contrast and shape | Black and white combination |
| Hierarchical color | Hierarchical | Hierarchical groups | One base color |

Hierarchical renders one color at different opacities by hierarchy, using the same hierarchy data as Palette. Black and white is a color preset, not a separate rendering mode. Assigning an individual color to every path is distinct from Palette's three groups. See [Apple's rendering mode guidance](https://developer.apple.com/design/human-interface-guidelines/sf-symbols).

Use `Image(brianSymbol:)` to load package assets. Color assets display their authored multicolor appearance by default; use `.symbolRenderingMode(...)` to select another mode explicitly. See [Using the color folder](#using-the-color-folder) for Multicolor, Monochrome, Palette, and Hierarchical examples.

## Rendering modes for monochrome symbols

Render monochrome line and fill assets in Monochrome mode with one custom color throughout. Black and white are separate single-color choices. Applying black and white to different regions within one asset belongs to the multicolor type's palette. Monochrome assets do not require decorative layers for Multicolor, Palette, or Hierarchical.

## Vector authoring

Choose the type and asset name first, keeping only shapes needed for recognition. Author one filled shape for multicolor or line and fill variants for monochrome. Follow the [scope and simplification rules](symbol-naming.md) for monochrome shape exceptions.

1. Export a template from the SF Symbols app for a symbol that permits modification.
2. Create shapes in a vector editor while preserving the template structure and guides.
3. Align the shared area and internal proportions using the [sizing and alignment guidelines](symbol-sizing.md).
4. Convert strokes to filled shapes, using closed paths and flat fills.
5. Remove hidden paths and additional effects such as shadows.
6. Match the structure of required weight and scale variants, then import into the SF Symbols app for validation.

Choose a Static template when authoring only one or two weight/scale variants, or a Variable template to support all variants through interpolation. For Variable templates, prepare `Ultralight-S`, `Regular-S`, and `Black-S` as interpolation sources. All three must use filled paths with identical path and control-point counts. Preserve the order and meaning of corresponding paths. Check generated intermediate weights and scales in the preview. Explicitly authored variants take precedence over interpolation. Variable templates are distinct from Variable Color. See [Apple's template and interpolation requirements](https://developer.apple.com/documentation/technologyoverviews/custom-sf-symbols).

Hidden paths may still be interpreted as symbol outlines. Do not add hidden rectangles to force square bounds. Finalize the shape before annotation: deleting or reordering paths afterward may require reannotation. See [path authoring and annotation preservation](https://developer.apple.com/documentation/uikit/creating-custom-symbol-images-for-your-app).

Some symbols representing Apple products or features restrict modification. Check the restrictions shown in the SF Symbols app when selecting a template. See [custom symbol design guidance](https://developer.apple.com/design/human-interface-guidelines/sf-symbols).

## Example: multicolor flower layers

Name the asset `brian.color.flower` and create petals, a flower center, a stem, and leaves as filled shapes. Do not create a line variant.

| Shape | Default color | Hierarchical group | Palette role |
|---|---|---|---|
| Petals | Pink | Primary | First color |
| Flower center | Yellow | Secondary | Second color |
| Stem and leaves | Green | Tertiary | Third color |

Multiple petal paths can belong to one group. If petals and the center merge in Monochrome and become hard to distinguish, use actual negative space or outlines to separate them. Covering an area with white is not the same as transparency.

Open the gallery view and Rendering Inspector in the SF Symbols app:

1. Assign default layer colors in Multicolor.
2. Assign Primary, Secondary, and Tertiary in Hierarchical. Palette uses the same data.
3. Check shapes and overlaps in Monochrome.
4. Review layer order and colors in each mode's preview.

## Default colors and customization

For every `brian.color.*` asset, define the curated multicolor colors in the distribution SVG using fixed `multicolor-<index>:custom` fills. Do not use `tintColor` for these default colors: it follows the surrounding foreground style instead of preserving the authored color. Keep Primary, Secondary, and Tertiary annotations for Palette and Hierarchical customization. See [annotation guidance](https://developer.apple.com/documentation/technologyoverviews/annotating-sf-symbols).

`Image(brianSymbol:)` selects original rendering for color assets, so the bare initializer displays the SVG colors without a caller-supplied mode or RGB values. Explicit Monochrome, Hierarchical, and Palette modes remain available. In Multicolor, foreground styles do not recolor the fixed layers; choose another mode to customize colors. Palette supplies up to three group colors, not an independent override for every SVG path.

Keep default colors in the SVG only. Do not add per-symbol default-color switches to the library or demo. The demo should show authored colors in Multicolor and expose color controls only in customizable modes. Check a bare initializer, an inherited foreground style, and all explicit modes when adding a color asset.

## Monochrome rendering of multicolor containers

A multicolor symbol with a subject inside a filled container must keep that subject recognizable in Monochrome. Color contrast alone may disappear when regions merge into one color. Preserve the inner shape through mode-specific layers or actual transparency.

For example, `brian.color.heart.circle` can use different colors for the circle and heart in Multicolor, then leave a transparent heart cutout in the filled circle in Monochrome. Do not substitute a white overlay for transparency. These are rendering settings for the same filled multicolor asset, not an additional line variant.

At small sizes, display solid black and solid white on contrasting backgrounds. Check that the subject remains visible and its boundaries do not merge.

## Exporting and using assets

Export a distribution SVG from the SF Symbols app, then register it as follows. Adding an ordinary image alone does not supply symbol annotations.

### Adding assets to the package

1. Add a new `.symbolset` to the [asset catalog](../Sources/BrianSymbols/Resources/BrianSymbols.xcassets), containing the SVG and a `Contents.json` referencing it. The SVG in this folder is the source of truth for editing and distribution.
2. Add a case matching the asset name to [BrianSymbol](../Sources/BrianSymbols/BrianSymbols.swift), such as `case star = "brian.star"`.
3. Rebuild the package and check the [macOS demo](../README.md#demo). Inspect size, weight, color, and alignment between line and fill.
4. Record the public name, authoring details, and actual validation coverage in the [asset specifications](symbol-assets.md).
5. Prepare the PR with [changes and validation results](asset-pull-requests.md).

Add asset files and public cases together. New cases appear automatically in the demo, so no separate list registration or generation script is needed. Remote package consumers must update to a version containing the change and rebuild.

### Using the color folder

The example below follows [Default colors and customization](#default-colors-and-customization). `Image(brianSymbol:)` loads the package resource bundle automatically.

```swift
import SwiftUI
import BrianSymbols

struct FolderStyles: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(brianSymbol: .colorFolder)

            Image(brianSymbol: .colorFolder)
                .symbolRenderingMode(.monochrome)
                .foregroundStyle(.purple)

            Image(brianSymbol: .colorFolder)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.orange, .indigo, .yellow)

            Image(brianSymbol: .colorFolder)
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(.blue)
        }
        .font(.system(size: 24, weight: .regular))
        .imageScale(.small)
    }
}
```

The default appearance and explicit Multicolor mode preserve the SVG's blue front, translucent blue back, and off-white paper. Palette assigns the three colors to the front, back, and paper, respectively. See the [color folder specification](symbol-assets.md#colorfolder) for mode-specific behavior and validation coverage.

For an entirely black or white symbol, select Monochrome and use `.foregroundStyle(.black)` or `.foregroundStyle(.white)` on a contrasting background. For square layout slots, apply the [sizing guidelines](symbol-sizing.md#asset-and-view-responsibilities) to each image.

Requesting an unsupported mode may result in monochrome rendering. Validate color-setting code together with asset annotations. See [configuring symbols in an app](https://developer.apple.com/documentation/uikit/configuring-and-displaying-symbol-images-in-your-ui).

For this package's monochrome symbols, import `BrianSymbols` and apply `.symbolRenderingMode(.monochrome).foregroundStyle(.purple)` to `Image(brianSymbol: .house)` or `Image(brianSymbol: .houseFill)`. Monochrome house assets are available and can be checked in the macOS demo.

## Features beyond color

Color support alone does not complete every symbol feature. Check required annotations and target OS support before including these features in the authoring scope.

| Feature | Authoring and validation |
|---|---|
| Weights and scales | Proportions across variants, path compatibility, and small-size legibility |
| Text alignment | Baseline and margins |
| Variable Color | Participating layers and emphasis order |
| Animation | Whole-symbol and per-layer behavior, plus annotations required by effects |
| Draw On/Off and Variable Draw | Drawing paths and sequence annotations |
| Gradients | Results combined with rendering modes on supported OS versions |

Variable Color changes layer opacity and emphasis according to a value; it is distinct from interpolation between arbitrary colors. Not every animation effect requires separate annotations. See the [feature overview](https://developer.apple.com/sf-symbols/) and [variable rendering and animation annotations](https://developer.apple.com/documentation/technologyoverviews/annotating-sf-symbols).

See the [README](../README.md#installation) for declared minimum OS versions and the [asset specifications](symbol-assets.md#shared-authoring-settings) for actual validation coverage. The SF Symbols tool version has not yet been finalized. For additional features, check OS and tool requirements separately from the package minimum, and record tested environments and fallback appearances. Declaring a minimum package platform version does not guarantee every feature works there.

## Completion criteria

- Templates and annotations are valid in the SF Symbols app.
- Multicolor assets provide only filled shapes, with SVG-defined default colors visible through the bare `Image(brianSymbol:)` initializer. Validate inherited foreground styles and explicit multicolor, monochrome, palette, black and white, and hierarchical appearances in an actual app.
- Multicolor containers keep their inner subjects recognizable in small-size Monochrome according to the [container guidelines](#monochrome-rendering-of-multicolor-containers).
- Monochrome assets provide line and fill or a documented shape exception, with custom single-color, black, and white rendering validated.
- Monochrome assets retain only details needed at small sizes rather than copying decoration and color boundaries from multicolor versions.
- Shapes and internal boundaries are distinguishable on light and dark backgrounds.
- Assets pass [size validation](symbol-sizing.md#size-validation).
- Added variable rendering and animation are checked on the target OS.
- Authoring sources, distribution SVGs, asset names, and supported features are maintained together.

For the first authoring pass, create monochrome line and fill assets and a multicolor filled asset, then validate each according to its type. Finalize dimensions and APIs after validation, and apply the same guidelines to other symbols.
