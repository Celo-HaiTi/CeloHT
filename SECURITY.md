# Security Policy

## Reporting a Vulnerability

We take security seriously. If you find a vulnerability, please **don't**
open a public issue for it. Instead, report it privately through one of
these channels:

- **Email**: security@celoht.com
- **GitHub Security Advisories**: use the ["Report a vulnerability"](https://github.com/celo-ht/celoht/security/advisories/new) tool

Please include:

1. A description of the vulnerability and its potential impact
2. Steps to reproduce the issue
3. Affected version or commit
4. Any mitigation you're already aware of

## Response Timeline

| Step | Target |
|---|---|
| Acknowledge receipt | 48 hours |
| Initial assessment and severity classification | 5 business days |
| Remediation plan and communication | 10 business days |
| Resolution or public update | Depends on severity |

## What This Policy Covers

This repository is a documentation and governance repository, not a
production application or a smart contract. Our security scope focuses on:

- The integrity of the GitHub Actions workflows
- Dependency security in `scripts/` and `tools/`
- Protecting the documentation from malicious content injection or misleading links
- Responsible disclosure related to how CeloHT documents and represents
  Celo, cUSD, and Valora infrastructure (which CeloHT does not control directly)

## Coordinated Disclosure

We follow a responsible disclosure process. We ask security researchers to
give us reasonable time to fix an issue before any public disclosure,
consistent with [`docs/incident-response.md`](docs/incident-response.md) and
[`docs/threat-model.md`](docs/threat-model.md).

## Acknowledgment

We appreciate every researcher who discloses a vulnerability responsibly.
With your permission, we're happy to credit your contribution in
[`CHANGELOG.md`](CHANGELOG.md).
