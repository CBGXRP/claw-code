# Reusable Prompts

Curated prompt templates for common AI interactions.

## Structure

Each prompt file should include:
- **Purpose**: What this prompt accomplishes
- **Variables**: Placeholders that need to be filled in (e.g., `{{MODULE_NAME}}`)
- **Prompt**: The actual prompt text

## Usage

Reference prompts from skills or use directly:
```bash
claude --print "$(cat tools/prompts/generate-api.md | sed 's/{{MODULE_NAME}}/users/g')"
```
