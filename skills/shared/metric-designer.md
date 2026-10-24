# Metric Designer

Purpose: convert broad research goals into metrics that are meaningful, measurable, and defensible.

## Metric construction

For each objective define:

`quantity + evaluation domain + baseline/reference + target + measurement method + validation setting`

Example pattern:
> Relative error of [quantity] over [specified regime] versus [reference method/data] ≤ X%, verified on [benchmark / experiment / held-out cases].

## Good metric properties

- Directly reflects the scientific or engineering claim.
- Can be evaluated with resources available in the project.
- Baseline is explicit.
- Avoids measuring a proxy when the true target is accessible.
- Does not imply unsupported scope.
- Contains enough detail to prevent post-hoc reinterpretation.

## Common failure modes

- “accuracy improved by 30%” without defining the error metric or baseline.
- “supports cross-condition prediction” with no range or held-out protocol.
- speedup claims that exclude preprocessing/training costs without stating so.
- “real-time” with no latency/hardware definition.
- metrics copied from a call but disconnected from the proposed method.

## Output

For each metric provide: original wording, risk, revised metric, verification route.
