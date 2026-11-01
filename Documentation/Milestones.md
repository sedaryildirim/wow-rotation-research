# Milestones

## M1 — Foundation
- [x] Project identity and repository layout
- [x] Swift package and unit-test target
- [x] Minimal addon load diagnostic
- [x] macOS CI workflow
- [ ] Create a new private GitHub repository and push this scaffold
- [ ] Confirm the first CI run passes

## M2 — Client compatibility research
- [ ] Record exact client version/build and interface version
- [ ] Inventory documented addon APIs available to this client
- [ ] Test only permitted, non-secret player information
- [ ] Record what is unavailable or restricted
- [ ] Produce a compatibility matrix for Protection Paladin

## M3 — Combat model and rotation evaluator
- [ ] Versioned combat-state schema
- [ ] Protection Paladin spell/talent catalogue based on verified client data
- [ ] Deterministic priority evaluator
- [ ] Synthetic single-target and multi-target fixtures
- [ ] Unit tests for every priority rule

## M4 — Defensive decision logic
- [ ] Health and resource thresholds
- [ ] Defensive/utility priority model
- [ ] Conflicting-action and stale-state handling
- [ ] Scenario-based regression tests

## M5 — Controlled research integration review
- [ ] Confirm written scope and permission for the test environment
- [ ] Review applicable client/server rules and technical constraints
- [ ] Define a safe, non-invasive integration boundary
- [ ] Do not implement automated game input or bypasses as part of this scaffold

## M6 — macOS research dashboard
- [ ] SwiftUI status dashboard
- [ ] Synthetic-state playback
- [ ] Decision explanations and logs
- [ ] Exportable test results

## M7 — Evaluation
- [ ] Reproducible encounter scenarios
- [ ] Decision accuracy and latency measurements
- [ ] Human-versus-engine comparison using controlled data
- [ ] Failure analysis

## M8 — Findings
- [ ] Research report
- [ ] Multiplayer fairness and abuse-impact analysis
- [ ] Follow-on roadmap
