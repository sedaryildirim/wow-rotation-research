# Architecture — Milestone 1

## Principles

1. Keep this repository and its history separate from Bobber.
2. Treat the current client as an unknown compatibility target until measured.
3. Separate observation, decision evaluation, presentation, and any future integration.
4. Keep the first decision engine deterministic and testable using synthetic fixtures.
5. Do not infer unavailable combat data or attempt to recover data hidden by client restrictions.
6. Keep live-game actions out of the Milestone 1 scaffold.

## Initial components

- **CombatCore (Swift):** typed combat snapshots and deterministic decision logic.
- **Diagnostics addon (Lua):** confirms addon loading only; it does not inspect restricted combat state.
- **Compatibility research:** records tested API names, availability, restrictions, and client build.
- **Tests:** synthetic fixtures for health-priority behaviour and later rotation rules.

## Protection Paladin scope

The initial class/spec focus is Protection Paladin. Spell lists, resource mechanics, talents, and rotation rules must be confirmed against the actual target client/build before being encoded.
