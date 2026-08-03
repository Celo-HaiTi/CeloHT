# API

## Current Status

This flagship repository is a governance and documentation hub it doesn't
expose any production API itself. This document describes the external APIs
that CeloHT's training material refers to.

## External APIs We Reference

### Celo (RPC)

Applications that interact with the Celo network use standard EVM-compatible
JSON-RPC endpoints. CeloHT doesn't operate any node itself; we point users
to public providers and the official Celo documentation.

### Valora

Valora is a mobile app without a publicly documented API that CeloHT uses
directly. Our training material shows how to use the Valora interface as an
end user, not how to integrate with it programmatically.

## Future Internal APIs

If CeloHT builds internal tooling say, an agent or reforestation tracking
dashboard it will be documented here, including:

- Endpoints and HTTP methods
- Request/response formats
- Authentication and rate limits
- Code examples

## Contributing

If you're building a tool that needs an API for the CeloHT ecosystem, start
a conversation in [GitHub Discussions](https://github.com/celo-ht/celoht/discussions)
before submitting a formal specification.
