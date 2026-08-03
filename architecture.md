# Architecture

## The Big Picture

CeloHT is a community initiative, not a single monolithic application. Its
architecture reflects that: it's a combination of existing public
infrastructure (Celo), communication tools (website, social channels), and
human processes (the agent network, training programs).

## The Layers

### 1. Financial Infrastructure Layer (external)

- **Celo** - the public, permissionless base chain
- **cUSD** - a stablecoin for everyday transactions
- **CELO** - the native token, used for governance and network fees
- **Valora** - the mobile wallet that makes interacting with the network practical

CeloHT doesn't operate any of this infrastructure. We build the education
and community process that makes it accessible.

### 2. Education Layer (CeloHT)

Training material, documentation, and resources written in Haitian Creole,
distributed through the website, downloadable documents, and in-person
community sessions.

### 3. Agent Network Layer (CeloHT)

A network of trained people in local communities who handle cash-in and
cash-out and provide local technical support, governed by the standards
described in [`agent-network.md`](agent-network.md).

### 4. Reforestation Coordination Layer (CeloHT)

A program that connects community agents with tree-planting activities,
tracking, and rewards, described in [`reforestation.md`](reforestation.md).

### 5. Governance & Documentation Layer (this repository)

This GitHub repository serves as the source of truth for vision, policy, and
standards across the whole ecosystem.

## Conceptual Diagram

```text
        [ Local Community ]
               │
       ┌───────┴────────┐
       │  CeloHT          │──── trained by ───┐
       │  Agent Network    │                   │
       └───────┬────────┘                     │
               │                       [ Education Layer ]
      cash-in/out, transfers                   │
               │                                │
       ┌───────▼────────┐                      │
       │  Valora Wallet   │◄─────────────────────┘
       └───────┬────────┘
               │
       ┌───────▼────────┐
       │ Celo Blockchain  │
       │  (cUSD / CELO)   │
       └────────────────┘
```

See [`technology.md`](technology.md) for more on each individual component.
