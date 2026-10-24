# Example 02 — UQ-SINDy + reinforcement learning

## Trigger
> UQ-SINDy 可以结合强化学习做吗？

## Mode
`research-architect`

## Key judgment
The combination is weak if RL is only an optimizer attached to SINDy. It becomes meaningful when uncertainty changes **what data to acquire, which experiment to run, or where to query next**.

## Pattern to reuse
A defensible formulation is active scientific discovery:
- state = current posterior/model uncertainty and available observations;
- action = measurement/forcing/initial-condition/query choice;
- reward = expected information gain, model discrimination, or reduction in prediction uncertainty under a budget;
- environment = physical or numerical experiment.

Compare against non-RL acquisition policies before claiming RL is necessary.

## Ideal response shape
- Distinguish three levels: superficial combination, useful active-learning formulation, genuinely publishable scientific question.
- Propose 2–3 environments where sequential decisions matter.
- Baselines: random, greedy uncertainty, Bayesian experimental design/active learning, non-RL policy.
- Define the minimum experiment that proves RL adds value.

## Failure to avoid
- Treating RL as automatically novel because the other component is SINDy.
