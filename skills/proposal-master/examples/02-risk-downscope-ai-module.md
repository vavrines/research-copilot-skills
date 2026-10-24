# Example 02 — Downscope an ambitious AI/automation task

## Trigger
> 这个任务风险还是偏高。不要做完整软件系统，最多交付计算模块。已有工具集成和自动化流程即可，保证能做出来。

## Mode
`proposal-master` — Diagnose + Rewrite + Risk reduction

## Key judgment
The scientific value can often be retained while removing unnecessary system-integration obligations.

## Pattern to reuse
- Identify whether autonomy/software/platform delivery is actually part of the research question.
- If not, replace “new platform/system” with **reusable computational module + workflow integration + validation interface**.
- Prefer AI as an enhancer of a trusted solver/workflow rather than an unsupported replacement.
- Separate the project's overall KPI from the subtask's controllable KPI; do not make one subtask promise the entire program-level improvement.
- Favor offline or human-confirmed loops before closed-loop autonomy unless autonomy is the object of study.

A low-risk route can be:
**high-fidelity solver → surrogate/accelerator → error or uncertainty monitor → correction/fallback to trusted solver**.

## Ideal response shape
Return a compact formal replacement text with:
1. research objective;
2. 2–3 research contents;
3. bounded deliverable;
4. measurable module-level metrics;
5. explicit fallback/verification route.

## Failure to avoid
- “智能自动化平台” as an undefined deliverable.
- Promising real-time, closed-loop, autonomous operation without latency, hardware, or fallback definition.
