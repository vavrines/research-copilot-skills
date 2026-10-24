# Example 01 — JCP assessment before numerical experiments are complete

## Trigger
> 这篇稿子值得投 JCP 吗？数值实验还会继续补，先重点看创新性、贡献和叙事逻辑。

## Mode
`paper-master` — Reviewer mode, JCP profile

## Key judgment
Do not over-penalize incomplete experiment coverage when the user explicitly asks for a contribution-level diagnosis. First decide whether the methodological core is JCP-worthy in principle.

## Pattern to reuse
1. Reconstruct the paper's one-sentence thesis.
2. Separate new **analysis/understanding** from new **algorithm/procedure**.
3. Ask whether the claimed defect/problem is nontrivial and whether the correction is generalizable.
4. Test whether the contribution is more than an implementation detail.
5. Identify the exact numerical evidence that will later be required to convert a promising contribution into a publishable JCP case.

## Ideal response shape
- Overall verdict: strong / potentially strong / marginal / weak for JCP.
- Strongest contribution.
- Main novelty vulnerability.
- Required evidence later: discriminating benchmark, baseline, error/convergence behavior, representative case.
- Storyline/title suggestions only after the contribution is clear.

## Failure to avoid
- Spending most of the response on missing figures when the current question is whether the core contribution is publishable.
- Treating mathematical analysis as automatically sufficient for JCP without algorithmic or numerical consequence.
