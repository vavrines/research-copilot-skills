# Example 04 — When toy tests are not enough for JCP

## Trigger
> 理论和算法看起来成立，但现在数值实验比较弱。是不是应该补更 practical 的例子？

## Mode
`paper-master` — Reviewer mode, JCP profile

## Key judgment
For a computational-method paper, canonical tests establish correctness; they do not necessarily establish usefulness, robustness, or generality.

## Pattern to reuse
Build an evidence ladder:
1. canonical case for correctness;
2. mechanism-isolating case where the defect is visible;
3. strong baseline comparison;
4. representative/practical case with realistic geometry, regime, stiffness, adaptivity, or scale;
5. quantitative summary of errors/costs, not only visual agreement.

The practical case should stress the exact capability claimed by the paper, not be added as decoration.

## Ideal response shape
- State why current experiments are insufficient.
- Specify the missing type of case rather than prescribing an arbitrary application.
- State what quantity should be reported and what baseline should be included.
- Explain how this evidence changes the journal-level case.

## Failure to avoid
- Adding a complicated example that does not test the claimed novelty.
