# Asset pull requests

Use the [PR template](../.github/pull_request_template.md) to show what changed and what was checked. Keep authoring details and support coverage in the [asset specifications](symbol-assets.md); link existing rules instead of repeating them. Omit work logs, full command output, and unrelated checklists.

Follow the [authoring completion criteria](symbol-authoring.md#completion-criteria) and [size validation](symbol-sizing.md#size-validation). Record actual checks, environment details, and remaining limitations.

## Example

Illustrative addition of the existing house pair, not a validation report. Replace placeholders with actual results and the specification's GitHub URL at the validated commit.

```markdown
## Changes

- Add `.house` and `.houseFill` (`brian.house`, `brian.house.fill`).
- Keep the filled silhouette constant across weights; vary the line thickness.

## Validation

- Validated commit: <SHA>; macOS <version>; Xcode <version>.
- Demo build and rendered comparisons: <actual results>.
- SF Symbols <version> import: <result or not checked>.
- Not checked / limitations: <remaining coverage or known issues>.
- [House specification](<GitHub file URL at validated commit>).
```
