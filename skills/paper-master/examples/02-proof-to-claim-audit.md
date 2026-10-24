# Example 02 — Does a proof actually support the paper's claim?

## Trigger
> 我们补了一个线性、多步误差公式，想说明在噪声数据下 EKI/UQ 比直接拟合更有优势。这个证明够不够？

## Mode
`paper-master` — Author mode, proof audit

## Key judgment
A valid derivation can still be insufficient if it proves a narrower surrogate statement than the manuscript's headline claim.

## Pattern to reuse
Audit four layers:
1. **Statement:** What is rigorously proven?
2. **Assumptions:** linearity, Gaussianity, fixed operator, independence, asymptotic or local assumptions.
3. **Bridge:** What additional argument connects the theorem to the nonlinear/noisy algorithm actually used?
4. **Evidence:** What numerical experiment isolates the theorem's predicted mechanism?

Prefer wording such as “provides a theoretical explanation under the linearized setting” when the proof does not establish global nonlinear superiority.

## Ideal response shape
- What the proof establishes.
- What it does not establish.
- Which claim in abstract/introduction should be weakened or reframed.
- One or two decisive experiments that would make the theoretical section useful rather than decorative.

## Failure to avoid
- Calling a one-step or linear result proof of global robustness.
- Using the theorem as a substitute for direct noisy-data comparison.
