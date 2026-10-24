# Example 04 — Make three research contents truly distinct

## Trigger
> 研究内容要三条，并与下面三个框对应。现在第一和第三有重复，还要把关键来流/边界状态的确定问题明确体现出来。

## Mode
`proposal-master` — Architect + Closure check

## Key judgment
Three boxes should represent three different scientific functions, not three phrasings of “fusion/modeling”.

## Pattern to reuse
Use functional decomposition:
1. **state determination / observability** — infer unknown inflow, boundary, latent, or parameter state;
2. **model construction / cooperative inference** — combine physics, data, and uncertainty to reconstruct or predict quantities;
3. **transfer / credibility / validation** — generalize across conditions and quantify reliability.

Then map each box to a unique objective and a unique validation signal.

## Ideal response shape
- Explain the overlap in the original decomposition.
- Give three replacement headings with one-sentence scientific roles.
- Provide a one-to-one mapping: bottleneck → content → method → metric.
- Recommend how the three boxes should visually differ.

## Failure to avoid
- Splitting “data fusion”, “model fusion”, and “physics-data fusion” into three nominally different tasks with the same inputs/outputs.
