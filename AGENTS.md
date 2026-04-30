# AGENTS.md

## Cursor Cloud specific instructions

This repository's `main` branch is essentially empty (single placeholder file). The remote branches contain isolated CTF challenge solutions that are not merged into main.

**Environment:**
- Node.js v22 (via nvm), Python 3.12, Git 2.43 are available in the VM.
- No dependencies to install, no services to start, no build system configured on `main`.

**Development workflow:**
- Work is done on feature branches (prefixed `cursor/`). Each branch is self-contained.
- There is no shared application, test suite, linter, or build step on `main`.
- If a branch introduces its own dependencies (e.g. a `package.json` or `requirements.txt`), install them from that branch's root.
