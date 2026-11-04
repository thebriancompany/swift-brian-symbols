# Asset pull requests

Use the [PR template](../.github/pull_request_template.md) to show what changed, how it renders, and what was checked. Keep authoring details and support coverage in the [asset specifications](symbol-assets.md); link existing rules instead of repeating them. Omit work logs, full command output, and unrelated checklists.

## Preview coverage

Include every added or visually changed asset, rendered in an app. Group comparisons into readable images labeled with asset names and settings. For modifications, show before/after with identical settings and identify both commits. Refresh previews after asset changes.

| Applies to | Required preview coverage |
|---|---|
| Every added or visually changed asset | UltraLight, Regular, Black side by side; 16/24/32 pt at Regular; light and dark backgrounds. Show line/fill together when both exist. |
| Monochrome | Custom tint, black on light, and white on dark. |
| Multicolor | Default Multicolor; custom-color Monochrome; two Palette color combinations; black/white Palette; Hierarchical. Label mode and color roles. |
| Weight/scale interpolation changes | Affected intermediate weights and image scales. |
| Alignment or bounds changes | Bounds or a text baseline reference at affected sizes. |
| Variable Color or animation changes | Representative values or a clip, labeled with values/effect and OS. |

Sample these conditions without testing every combination; add combinations that expose a defect. State when an asset intentionally keeps the same silhouette across weights.

The current [demo](../README.md#demo) supports the three listed weights, size, tint, background, and bounds in Monochrome only. Other rendering modes, intermediate weights, scales, and effects need a separate app preview or demo extension. For validation beyond images, follow the [authoring completion criteria](symbol-authoring.md#completion-criteria) and [size validation](symbol-sizing.md#size-validation).

## Attach previews

Do not commit PR preview images or clips. Keep captures outside the checkout and attach them to the PR:

1. Drag PNG images into the GitHub PR description editor to insert [hosted attachment URLs](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/attaching-files).
2. Confirm that images display inline and labels are readable.

Actions artifacts may hold downloadable originals, but [expire with retention settings](https://docs.github.com/en/actions/how-tos/manage-workflow-runs/remove-workflow-artifacts); use PR attachments for review evidence. Capture and upload are currently manual.

## Example

Illustrative addition of the existing house pair, not a validation report. Replace placeholders with actual results, attachment URLs, and the specification's GitHub URL at the preview commit.

```markdown
## Changes

- Add `.house` and `.houseFill` (`brian.house`, `brian.house.fill`).
- Keep the filled silhouette constant across weights; vary the line thickness.

## Preview

House pair — UltraLight/Regular/Black at 24 pt; Regular at 16/24/32 pt;
purple tint, black on light, and white on dark.

![House pair: weight, size, and color comparisons](<GitHub attachment URL>)

## Validation

- Preview: <SHA>; macOS <version>; Xcode <version>.
- Demo build and rendered comparisons: <actual results>.
- SF Symbols <version> import: <result or not checked>.
- Not checked / limitations: <remaining coverage or known issues>.
- [House specification](<GitHub file URL at preview commit>).
```
