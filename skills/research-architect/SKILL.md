---
name: research-architect
description: Turn an early scientific idea, method combination, or research direction into a defensible research program. Use for “is this worth doing?”, novelty assessment, research-question design, hypothesis formation, killer-example design, baseline selection, minimum publishable study, project-to-paper decomposition, and risk-aware research planning.
---

# Research Architect

Convert interesting combinations into necessary, testable scientific questions.

## Core principle

A new combination is not yet a research contribution. The key question is:
> What failure, ambiguity, or missing capability makes this new idea necessary, and what experiment would clearly demonstrate that necessity?

## Workflow

1. **Normalize the idea.** Express it as `existing capability A + new mechanism/tool B + target problem C`.
2. **Map the existing solution space.** Identify what standard physics/numerics/statistics/ML can already do and where they fail.
3. **Find the necessity gap.** Seek a failure mode, identifiability issue, structural constraint, multiscale barrier, uncertainty problem, or cost barrier that is intrinsic rather than cosmetic.
4. **Form the scientific question.** Phrase it so that both success and failure would be informative.
5. **State the central hypothesis.** Make the mechanism explicit: why should the proposed idea outperform or reveal something new?
6. **Choose the research contribution type.** Theory / numerical method / learning method / scientific discovery / data infrastructure / integrated capability. Avoid mixing all types unless necessary.
7. **Design killer examples.** Build 2–4 cases where competing methods are expected to fail for different reasons and the new method has a principled advantage.
8. **Choose baselines.** Include the strongest credible baseline, not only the easiest one to beat.
9. **Build an evidence ladder.** canonical → discriminating → robustness → representative application.
10. **Assess risk.** Use `../shared/risk-reducer.md` and identify a minimum publishable result even if the ambitious branch fails.
11. **Assess venue/project shape.** Decide whether the idea is better as one paper, a paper sequence, a student project, or a proposal theme.
12. **Score readiness.** Use `../shared/research-rubric.md`.

## Necessity tests

An idea is weak if:
- the new component is added only because it is fashionable;
- the same improvement could likely come from better tuning/data/resolution;
- the baseline is artificially weak;
- the claimed physical constraint can already be imposed directly at lower cost;
- the paper can only show average error improvements, not a qualitative capability difference.

An idea becomes stronger when:
- there is a known non-identifiability or extrapolation failure;
- formal/physical constraints eliminate plausible-but-wrong solutions;
- uncertainty quantification changes a decision, not just adds error bars;
- multiscale information is unavailable to the coarse model but can be injected sparsely;
- the new method restores a conservation, symmetry, causality, or admissibility property that standard fitting violates.

## Killer-example design

For each example specify:
1. what the standard method predicts;
2. why it should fail;
3. what the proposed method uses that the baseline lacks;
4. a measurable success criterion;
5. a negative-control case where both methods should work.

Prefer a few high-information examples over a large benchmark zoo.

## Research-program decomposition

For a multi-year direction, split into:
- **P1 — principle:** establish the core mechanism on controlled problems;
- **P2 — method:** develop scalable/general formulation;
- **P3 — application:** demonstrate value in the target scientific regime.

Each stage should be independently publishable where possible.

## Output contracts

### “Is this a good idea?”
Return: verdict, real novelty, why it may fail, necessity gap, 2–4 decisive experiments, minimum paper, longer-term extension.

### New research direction
Return: scientific question, hypothesis, contribution, method skeleton, baselines, killer examples, risks/fallbacks, likely paper/proposal structure.

## Few-shot examples

Use `../shared/few-shot-policy.md` before transferring patterns from examples. Relevant cases:
- `examples/01-lean-sindy-necessity.md`
- `examples/02-uq-sindy-rl.md`
- `examples/03-agent-scientific-computing.md`
- `examples/04-gsi-multiscale-program.md`

Examples are primarily necessity-gap and killer-example patterns. They do not establish current novelty; verify the present literature when novelty depends on it.

