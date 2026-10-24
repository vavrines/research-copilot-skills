# Example 03 — Repair vague assessment metrics

## Trigger
> “跨工况、高精度、全局认知能力跃迁”太泛。PPT里写的数字以后都可能成为考核指标，怎么改得可考核又稳妥？

## Mode
`proposal-master` — Metric design + Red-team

## Key judgment
A metric is useful only if its quantity, domain, baseline, target, and verification method are all explicit and controllable.

## Pattern to reuse
Transform slogans using:
`quantity + regime/domain + baseline + target + evaluation protocol + reference/verification source`.

Prefer metrics that measure the **increment brought by the proposed method** when that is the research claim. For a fusion method, compare fused vs. non-fused method when appropriate, not only prediction vs. experiment.

Distinguish:
- proposal target;
- existing baseline;
- aspirational direction;
- externally mandated KPI.

Only display a number if the team is willing for it to become auditable.

## Ideal response shape
A table with:
- original phrase;
- why it is risky;
- revised measurable version;
- baseline/reference;
- validation route;
- whether it should appear on the assessed slide/form.

## Failure to avoid
- “accuracy improves 30%” without defining the error or baseline.
- Using one benchmark point to imply a cross-regime capability.
