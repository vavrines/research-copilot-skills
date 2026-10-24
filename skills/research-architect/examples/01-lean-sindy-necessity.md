# Example 01 — Lean + SINDy / symbolic discovery

## Trigger
> Lean 和 SINDy/符号回归结合是不是好方向？最终要不要设计几个例子，证明经典方法会得到错误模型，而加上形式化约束后明显更好？

## Mode
`research-architect`

## Key judgment
“Formal methods + symbolic regression” is only interesting if formal constraints eliminate plausible-but-wrong models that data fitting alone cannot reliably reject.

## Pattern to reuse
Necessity gap candidates:
- non-identifiability from sparse/noisy data;
- dimensionally valid but physically inadmissible candidate equations;
- missing conservation, symmetry, positivity, causality, or boundary admissibility;
- multiple candidates with similar residuals but different physical consequences.

Design killer examples where:
1. vanilla SINDy has a realistic failure mode;
2. the formal constraint excludes exactly that failure;
3. the proposed hybrid recovers the admissible model;
4. a negative-control case shows no artificial advantage when the data are already sufficient.

## Ideal response shape
- Verdict on research value.
- The real novelty claim—not merely “Lean is used”.
- 3–4 killer examples, ordered from controlled ODE/PDE to mechanics-relevant case.
- Strong baselines: vanilla SINDy, constrained SINDy, physics-informed sparse regression, and ablation without formal verification as appropriate.
- Minimum publishable paper and longer-term extension.

## Failure to avoid
- Using Lean only to verify an already discovered equation after the fact.
- Choosing examples where ordinary constrained regression already solves the problem equally well.
