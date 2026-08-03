# Threat Model

## Purpose

Document the main threats relevant to this repository and to CeloHT's
communication ecosystem, along with their respective mitigations.

## Threat Categories

### 1. Impersonation and Phishing

**Threat**: Bad actors create a website, social account, or repository that
imitates CeloHT to steal user funds.

**Mitigation**: Official channels are clearly documented in
[`contact.md`](contact.md) and [`README.md`](../README.md). We never ask a
user for their seed phrase.

### 2. Repository Content Manipulation

**Threat**: A bad-faith contributor edits documentation to publish false
information for example, false promises of investment returns.

**Mitigation**: [`CODEOWNERS`](../CODEOWNERS) requires mandatory review for
sensitive paths; CI checks every change.

### 3. CI/CD Workflow Compromise

**Threat**: A compromised GitHub Actions workflow could expose secrets or
modify content without authorization.

**Mitigation**: Secret scanning (Gitleaks), CodeQL, and automated dependency
review run on every Pull Request; workflow permissions are limited to the
minimum required.

### 4. Misleading Financial Claims

**Threat**: Content that could be read as investment advice or a guaranteed
return, contradicting [`values.md`](values.md).

**Mitigation**: A contribution standard requiring review of any financial
content for compliance with the "no investment advice" policy in
[`legal-status.md`](legal-status.md).

## Out of Scope

The security of the Celo protocol itself, third-party smart contracts, and
the Valora application's security are the responsibility of their respective
teams, not CeloHT.
