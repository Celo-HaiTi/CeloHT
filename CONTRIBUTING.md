# Contributing to CeloHT

Thanks for thinking about contributing. This repository is the governance
and documentation hub for the whole CeloHT ecosystem, so the quality bar for
changes here matters - it's often the first thing a new contributor, partner,
or funder reads.

## Code of Conduct

Everyone participating in this project is expected to follow our
[`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md).

## What We're Looking For

- Documentation improvements - clarity, translations, fixing errors
- New examples in `examples/`
- Improvements to the scripts in `scripts/` and `tools/`
- Improvements to GitHub Actions workflows
- Governance proposals, raised as a Discussion rather than a direct Pull Request

## How to Contribute

1. Fork the repository and create a branch with a descriptive name
   (for example: `docs/improve-developer-guide`).
2. Make your changes, keeping [repository-guide.md](repository-guide.md) in mind.
3. Test locally: run `bash scripts/validate.sh` to check Markdown, YAML, and links.
4. Open a Pull Request in the repository using the normal GitHub flow at [GitHub Pull Requests](https://github.com/Celo-HaiTi/CeloHT/pulls).
5. Respond to review - a maintainer will look at it and may ask for changes.
6. Once approved, a maintainer will merge it.

## Quality Bar

- Write clearly, in plain English, without unnecessary jargon.
- No placeholder text, "coming soon" sections, or broken links.
- Every document should have a clear purpose and stay consistent with the
  rest of the docs.
- Follow the repository's Markdown conventions and validation checks in [scripts/validate.sh](scripts/validate.sh).

## Commit Style

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```text
docs: add a section on the governance model
fix: correct broken link in docs/faq.md
feat(scripts): add a link validation script
```

## Questions?

Ask in [GitHub Discussions](https://github.com/Celo-HaiTi/CeloHT/discussions) or
check [`SUPPORT.md`](SUPPORT.md).
