# Global Reference Audit

## Canonical vocabulary

- Active project: `CeloHT`
- Canonical GitHub organization: `Celo-HaiTi`
- Canonical currency terminology: `USDm`
- Obsolete project-name variant: a legacy project-name form that must not appear in the current editable corpus
- Obsolete currency label: a legacy currency label that must not appear in the current editable corpus

## Enforcement rule

CURRENT CORPUS REQUIREMENT:

The current editable repository corpus must use only canonical active terminology. Obsolete terminology must not be retained merely because it appears in historical context. Immutable Git history is excluded from this requirement.

Historical Git history may retain obsolete terminology, but current editable files must follow the canonical vocabulary.

The audit therefore fails if current editable files contain the obsolete project-name variant, the obsolete currency label, or obsolete legacy GitHub organization URL patterns associated with the legacy project-name form.

These are treated as current-corpus violations, not acceptable historical references, even when they appear in otherwise current documentation.

## Immutable history vs. current editable corpus

### Immutable history

Allowed to contain old terminology because rewriting Git history is outside the scope of normal documentation cleanup.

Examples:

- old commits
- commit messages
- immutable commit hashes
- historical Git objects

### Current editable corpus

Must follow canonical terminology.

Examples:

- current README files
- current Markdown files
- current source files
- current documentation
- current configuration
- current website content
- current examples
- current links
- current changelogs

The second category must have ZERO obsolete visible terminology.

## Required audit actions

The repository-level audit must:

1. Search the active organization and the current checkout for the obsolete currency label, the obsolete project-name variant, and obsolete legacy GitHub organization URL patterns.
2. Label each occurrence by repository, file, and line.
3. Determine whether the match is current editable content or immutable history.
4. Remove or rewrite any current editable occurrence to the canonical vocabulary.
5. Preserve `CeloHT` and `Celo-HaiTi` exactly as written.
6. Never classify obsolete terminology as acceptable just because it appears in a historical note, migration note, or changelog entry.

## Review standard

A repository passes only when the final search confirms zero current editable-file matches for:

- `cUSD`
- `Celo-HT`
- `github.com/Celo-HT/`
- `github.com/Celo-HT`

Canonical references remain valid:

- `CeloHT`
- `Celo-HaiTi`
- `USDm`

## Notes

The current repository corpus is expected to remain free of obsolete visible terminology unless a file is deliberately excluded as immutable Git history, which is outside the scope of normal documentation remediation.
