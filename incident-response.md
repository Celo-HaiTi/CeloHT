# Incident Response

## Purpose

This document describes how CeloHT responds when a security or operational
incident happens whether that's a vulnerability in this repository, an
issue affecting the agent network, or a communication incident like an
official social media account getting compromised.

## Severity Classification

| Level | Description | Example |
|---|---|---|
| **Critical** | Direct risk to user funds or personal safety | Compromised official account, a training guide with dangerous content |
| **High** | Significant impact, not immediate | A vulnerability in CI/CD workflows |
| **Medium** | Limited impact, manageable in the normal course of work | A documentation error that could cause confusion |
| **Low** | Minimal impact | A broken link, a typo |

## Response Steps

1. **Detection**: reported by a maintainer, contributor, or user
2. **Confirmation**: a security maintainer confirms and classifies severity
3. **Containment**: immediate action to limit impact (removing content,
   revoking access)
4. **Communication**: community notification appropriate to the severity
5. **Resolution**: fixing the root cause
6. **Post-incident review**: documenting lessons learned publicly where possible

## Emergency Communication Channel

For critical incidents affecting the user community (for example, a
phishing campaign using the CeloHT name), an urgent notice will be posted on
[@CeloHtOfficial](https://twitter.com/CeloHtOfficial) and on this repository.

See [`SECURITY.md`](../SECURITY.md) for how to report an incident.
