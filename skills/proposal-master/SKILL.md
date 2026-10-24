---
name: proposal-master
description: Develop, diagnose, restructure, or red-team scientific research proposals, calls, concept notes, and funding applications. Use when the user provides a call/template/draft or asks to turn a research direction into objectives, research contents, technical routes, metrics, innovations, feasibility, deliverables, or reviewer-ready proposal text.
---

# Proposal Master

Build scientifically defensible proposals with explicit closure between need, question, objective, research content, technical route, metric, and deliverable.

## Primary modes

- **Architect** — build a proposal from a call, idea, or rough notes.
- **Diagnose** — find structural weaknesses in an existing draft.
- **Rewrite** — produce formal proposal-ready text after diagnosis.
- **Red-team** — simulate reviewer objections and repair the weakest links.

## Workflow

1. **Parse the external constraint.** Extract scope, target scenario, required outputs, duration, budget/TRL constraints, mandatory metrics, and wording that must be answered directly.
2. **Identify the real bottleneck.** Separate national/application need, engineering bottleneck, and scientific question. Avoid presenting capability construction as the scientific question.
3. **Choose the proposal spine.** Express one central question and 2–4 subordinate questions. If more than four are needed, test whether the scope is actually multiple projects.
4. **Design objectives.** Each objective must state a change in knowledge/capability that can be verified, not merely an activity such as “study” or “build”.
5. **Design research contents.** Use a progression such as mechanism → model/method → coupling/validation, or theory → algorithm → application. Each content item must map to at least one objective.
6. **Design the technical route.** Show information/data/model flow and major dependencies. Do not duplicate the research-content headings as a fake route.
7. **Design metrics and validation.** Invoke the logic in `../shared/metric-designer.md`. Distinguish scientific validation, numerical benchmarking, experimental verification, and system demonstration.
8. **Audit closure.** Apply `../shared/closure-checker.md` before polishing prose.
9. **Audit claims/evidence.** Apply `../shared/claim-auditor.md` and `../shared/evidence-checker.md`.
10. **Reduce risk.** Apply `../shared/risk-reducer.md` to the weakest dependency; keep a fallback route that still yields a meaningful result.
11. **Write to template.** Match the requested section granularity and style. Use formal, specific language; avoid generic slogans.
12. **Reviewer red-team.** Score with `../shared/research-rubric.md` and return the top 3 likely reviewer objections plus targeted repairs.

## Proposal-specific checks

### Scientific depth
- Does the proposal explain *why* the bottleneck occurs, not only that it exists?
- Is there a hypothesis, mechanism, mathematical difficulty, or identifiability issue that can generate new knowledge?
- If AI/ML is present, what bottleneck cannot be handled adequately by the existing physics/numerics alone?

### Goal–content discipline
- Prefer 3 coherent research contents over 5–8 loosely coupled work packages.
- Avoid repeated contents with different labels.
- If a boundary/initial/inflow condition is uncertain and central, make its determination explicit rather than burying it in calibration.

### Innovation discipline
Classify each claimed innovation as:
1. scientific mechanism/theory;
2. numerical/mathematical method;
3. data/AI methodology;
4. coupling/integration;
5. application demonstration.
Do not present category 4–5 alone as fundamental methodological novelty unless justified.

### Metrics
- Separate *research target* from *already achieved result*.
- Avoid broad phrases such as “cross-condition, high-precision, global cognition” unless converted into ranges and measurable quantities.
- Ensure all displayed metrics are intended to be formally assessed; otherwise keep them qualitative.

## Output contracts

### When asked for a full concept
Return:
1. proposal thesis in 2–4 sentences;
2. core scientific question;
3. 2–4 research contents;
4. technical route;
5. innovations;
6. metrics and verification;
7. feasibility and risks;
8. reviewer red-team.

### When asked to improve an existing draft
Return structural diagnosis first. Rewrite only after identifying the 1–3 highest-impact problems.

### When asked for formal text
Use proposal-ready prose; minimize meta-commentary and avoid conversational filler.

## Few-shot examples

Use `../shared/few-shot-policy.md` before transferring patterns from examples. Relevant cases:
- `examples/01-scientific-depth-vs-capability.md`
- `examples/02-risk-downscope-ai-module.md`
- `examples/03-metric-baseline-closure.md`
- `examples/04-three-content-closure.md`

Examples guide judgment and output architecture; current calls/templates/metrics always override historical-style cases.

