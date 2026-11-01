# WoW Rotation Research

A standalone research project exploring combat-state interpretation, defensive decision logic, rotation evaluation, and reproducible testing for a Protection Paladin on the latest WoW: Forever client.

**This repository is independent of Bobber.** It must never be merged into, copied over, or developed inside the Bobber repository.

## Current scope

Milestone 1 establishes the project structure, Swift package, test target, addon diagnostic scaffold, documentation, and CI workflow.

The initial environment is **normal client and addon access only**. No server-side telemetry is assumed. Milestone 2 must verify which client APIs and values are actually available before any live integration is designed.

This project starts with offline/synthetic combat-state tests and permitted addon diagnostics. It does not include automated combat input, gameplay key injection, memory reading, protected-API bypasses, or anti-cheat evasion. Any future live integration requires a clearly authorised test arrangement and a separate review of applicable game and server rules.

## Repository layout

- `Sources/` — Swift core library
- `Tests/` — XCTest coverage
- `Addon/` — minimal Lua diagnostic addon scaffold
- `Documentation/` — architecture, compatibility checklist, milestones
- `.github/workflows/` — macOS Swift CI

## Build and test

Requires a recent Swift toolchain.

```sh
swift test
```

## Initial focus

Protection Paladin. Rotation rules will be driven by an explicit, versioned combat-state model and verified test fixtures; no assumption is made that a retail or older Classic APL maps directly to WoW: Forever.
