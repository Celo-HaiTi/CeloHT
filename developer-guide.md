# Developer Guide

## Development Environment

This repository is primarily documentation and configuration there's no
production application to compile. That said, the validation scripts do
require:

- **Node.js** 18+ (for `scripts/check-required-files.js`)
- **Bash** (for `scripts/validate.sh`)
- **Python 3** (for YAML/JSON checks in CI)

## Getting Started Locally

```bash
git clone https://github.com/celo-ht/celoht.git
cd celoht

bash scripts/validate.sh
node scripts/check-required-files.js
```

## Code Standards

- YAML files should follow standard YAML 1.1 syntax, spaces only, no tabs.
- Markdown files should follow the rules in [`.markdownlint.yaml`](../.markdownlint.yaml).
- Node.js scripts should use `"use strict"` and explicit error handling.

## Testing Your Changes

Before opening a Pull Request:

1. Run `bash scripts/validate.sh` checks structure, YAML, JSON
2. Run `node scripts/check-required-files.js` checks required documents

3. Install `markdownlint-cli2` locally if you're making significant Markdown
   changes:

   ```bash
   npm install -g markdownlint-cli2
   markdownlint-cli2 "**/*.md" "#node_modules"
   ```

## Example

See [`examples/hello-agent/`](../examples/hello-agent/) for a simple example
demonstrating the data structure behind a CeloHT community agent profile.

## Technical Questions

For technical questions, use [GitHub Discussions](https://github.com/celo-ht/celoht/discussions)
with the `question` tag.
