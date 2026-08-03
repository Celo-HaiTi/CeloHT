# Deployment

## Documentation Deployment (GitHub Pages)

Documentation under `docs/` deploys automatically to GitHub Pages through
the [`.github/workflows/pages.yml`](../.github/workflows/pages.yml) workflow
whenever something changes on `main` under `docs/` or `assets/`.

The site is available at **https://docs.celoht.com** (configured through the
[`CNAME`](../CNAME) file at the repository root).

### Automatic Deployment Steps

1. A push or merge to `main` touches `docs/**` or `assets/**`
2. The `pages.yml` workflow builds `docs/` into a Pages artifact
3. GitHub Pages deploys that artifact to the configured domain

## Main Site Deployment (celoht.com)

The main CeloHT website (`celoht.com`, distinct from `docs.celoht.com`) is
managed in a separate dedicated repository, deployed through Vercel with a
domain managed on Namecheap.

## Release Deployment

Every repository version (for example, `v1.0.0`) is tagged and published
automatically through [`.github/workflows/release.yml`](../.github/workflows/release.yml),
which generates release notes from [`CHANGELOG.md`](../CHANGELOG.md).

## Environments

| Environment | Domain | Source |
|---|---|---|
| Documentation | docs.celoht.com | `docs/` (this repository) |
| Main Site | celoht.com | Separate website repository |
