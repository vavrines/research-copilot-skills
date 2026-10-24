# Example 04 — Build a multi-scale research program from GSI + kinetic flow + solid response

## Trigger
> 面向超低轨，把气体动理学散射核建模、DSMC/动理学流动与近场动力学流固耦合结合，作为一个中等规模项目，研究主线怎么组织？

## Mode
`research-architect` → can hand off to `proposal-master`

## Key judgment
Avoid presenting three established methods as a novelty by juxtaposition. The research architecture must identify the information that crosses scales and why current one-way/decoupled treatment fails.

## Pattern to reuse
A defensible hierarchy:
1. interface mechanism / scattering representation;
2. how uncertain/nonlinear interface physics propagates into rarefied aerodynamic/thermal loads;
3. how those loads interact with material thermal/mechanical evolution and feed back to the interface state;
4. which couplings are essential versus optional.

Define the minimum closed loop first; add fidelity only when it changes the scientific answer.

## Ideal response shape
- central cross-scale scientific question;
- three-stage program: interface → flow → material/coupling;
- exchanged state variables and coupling direction;
- minimum validation ladder;
- fallback if full two-way coupling proves too expensive.

## Failure to avoid
- Claiming novelty from “MD + DSMC + peridynamics” alone.
