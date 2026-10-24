# Example 03 — Long-horizon agents for scientific computing

## Trigger
> 面向 agent 的长程任务能力发展，有没有能和科学计算/CFD结合的研究方向？

## Mode
`research-architect`

## Key judgment
Do not frame “agent can call a CFD solver” as the contribution. The research question should be about reliable long-horizon scientific decision-making under model, tool, and verification constraints.

## Pattern to reuse
Potential necessity gaps:
- multi-step simulation campaigns with branching decisions;
- adaptive mesh/model/regime selection;
- failure recovery and solver/tool orchestration;
- provenance and verification of intermediate scientific claims;
- budget-aware experiment/simulation planning.

A strong benchmark should contain tasks where one-step tool use succeeds but long-horizon planning fails without memory, verification, or policy structure.

## Ideal response shape
- 2–4 research questions rather than a catalog of applications.
- One benchmarkable long-horizon task definition.
- agent architecture only after defining the failure mode.
- evaluation axes: task success, scientific validity, cost, recovery, reproducibility.
- minimum student project vs. larger program.

## Failure to avoid
- Building a generic “CFD Copilot” with no scientific hypothesis.
