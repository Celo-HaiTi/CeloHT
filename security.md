# Security (Documentation Summary)

For the full vulnerability reporting policy, see [`SECURITY.md`](../SECURITY.md)
at the repository root.

## Our Approach

CeloHT takes a layered approach to security:

1. **Repository security**: CodeQL, Gitleaks (secret detection), and
   automated dependency review through GitHub Actions.
2. **Educational security**: our education modules teach users to recognize
   common scams and protect their seed phrase.
3. **Agent security**: baseline verification and a code of conduct for
   community agents, designed to protect end users.

## What This Repository Doesn't Cover

This repository doesn't manage the security of the Celo protocol itself, or
of the Valora app those fall to their respective teams. For issues
specific to that infrastructure, we point users to the official Celo and
Valora security channels.

## Reporting a Problem

Follow the process in [`SECURITY.md`](../SECURITY.md): email
security@celoht.com privately, **not** a public Issue.
