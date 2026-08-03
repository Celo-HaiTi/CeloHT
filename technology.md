# Technology

## Official Financial Infrastructure

CeloHT relies on the following technologies as its technical foundation.
Replacing any of them requires an explicit governance decision see
[`governance.md`](governance.md):

### Celo

A public Layer-1 blockchain built for mobile-first access, using
Proof-of-Stake consensus and EVM compatibility. CeloHT uses it as the base
chain for agent-network transactions and reforestation rewards.

### cUSD (Celo Dollar)

A stablecoin pegged to the US dollar, used for everyday transactions
(cash-in/cash-out, transfers, rewards) because its price stability makes it
far more practical than a volatile asset for daily use.

### CELO

The network's native token, used for transaction fees and governance within
the Celo protocol itself. We teach users what it is and how it's used
without positioning it as our primary product.

### Valora

A mobile wallet built for simplicity, letting users send and receive cUSD
and CELO without needing to understand everything happening under the hood.
It's the wallet we recommend across all of our training material.

## Not a Permanent, Exclusive Choice

Celo and Valora are our current standard, but we're aware the crypto
ecosystem keeps evolving. Any change to this foundational technology has to
go through the process described in [`governance.md`](governance.md) and be
documented in [`CHANGELOG.md`](../CHANGELOG.md).

## Development Tooling

CeloHT's technical materials and resources are built with standard
open-source tools Node.js, Python, and document/report libraries like
`docx` and `ReportLab` to produce training material in both Haitian Creole
and English.

See [`developer-guide.md`](developer-guide.md) for details on the
development environment.
