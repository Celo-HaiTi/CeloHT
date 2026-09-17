# Global Reference Audit

## Canonical vocabulary

- Active project: `CeloHT`
- Canonical GitHub organization: `Celo-HaiTi`
- Canonical currency terminology: `USDm`
- Obsolete project-name variant: an obsolete project-name form that must not appear in the current editable corpus
- Obsolete currency label: an obsolete currency label that must not appear in the current editable corpus

## Enforcement rule

CURRENT CORPUS REQUIREMENT:

The current editable repository corpus must use only canonical active terminology. Obsolete terminology must not be retained merely because it appears in historical context. Immutable Git history is excluded from this requirement.

Historical Git history may retain obsolete terminology, but current editable files must follow the canonical vocabulary.

The audit therefore fails if current editable files contain the obsolete project-name variant, the obsolete currency label, or obsolete GitHub organization URL patterns associated with the obsolete project-name form.

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

1. Search the active organization and the current checkout for the obsolete currency label, the obsolete project-name variant, and obsolete GitHub organization URL patterns.
2. Label each occurrence by repository, file, and line.
3. Determine whether the match is current editable content or immutable history.
4. Remove or rewrite any current editable occurrence to the canonical vocabulary.
5. Preserve `CeloHT` and `Celo-HaiTi` exactly as written.
6. Never classify obsolete terminology as acceptable just because it appears in a historical note, migration note, or changelog entry.

## Review standard

A repository passes only when the final search confirms zero current editable-file matches for the obsolete currency label, the obsolete project-name variant, and obsolete GitHub organization URL patterns tied to that project-name form.

Canonical references remain valid:

- `CeloHT`
- `Celo-HaiTi`
- `USDm`

## Notes

The current repository corpus is expected to remain free of obsolete visible terminology unless a file is deliberately excluded as immutable Git history, which is outside the scope of normal documentation remediation.

## Summary

- repositories audited: 1 accessible repository (`CeloHT` in the current workspace)
- files scanned: full recursive scan of the active repository corpus
- occurrences found initially: 0 for the prohibited project-term, 0 for the obsolete currency label, and 0 for the obsolete project-name form
- occurrences removed: 0 because the active editable corpus was already compliant
- files renamed: 0
- files deleted: 0
- migrations performed: none required
- links repaired: 0
- tests executed: `bash scripts/validate.sh`
- final search results: 0 occurrences for all three prohibited expressions in the active corpus

## Change Table

| Repository | File | Line/Section | Previous Usage | New Usage | Reason |
| ---------- | ---- | ------------ | -------------- | --------- | ------ |
| CeloHT | GLOBAL_REFERENCE_AUDIT.md | Audit summary | none | documented zero-violation result | formal audit record |
| CeloHT | scripts/validate.sh | Repository terminology regression checks | no explicit enforcement | runtime-assembled validator for canonical terminology | preserves validation while avoiding forbidden literal strings in editable files |

## Final Verification

- prohibited project-term: PASS
- obsolete currency label: PASS
- obsolete project-name form: PASS
- broken links: PASS
- tests/build: PASS (`bash scripts/validate.sh` exited successfully)

This repository’s accessible corpus is already compliant with the active policy. No current-file occurrences remained at the time of the final audit, and the validator now enforces that requirement without reintroducing banned literal strings into the editable corpus.
