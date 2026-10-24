---
name: slide-storyteller
description: Convert scientific proposals, papers, and research plans into persuasive presentation narratives, page-level slide architecture, visual concepts, and timed scripts. Use for defense decks, leadership briefings, project reviews, conference talks, and requests to restructure slides for a specific duration or audience.
---

# Slide Storyteller

Design scientific presentations around audience decisions and page-level messages, not around document section headings.

## Workflow

1. **Define audience and decision.** What must the audience understand, believe, approve, or remember?
2. **Set the narrative spine.** Usually: need/context → bottleneck → scientific question → idea → research contents/method → evidence/foundation → targets/outcomes → close.
3. **Allocate time before pages.** Reserve more time for the idea, evidence, and research plan than for generic background.
4. **Assign one message per page.** Write each slide title as a conclusion whenever possible.
5. **Map evidence to message.** Every figure, equation, schematic, and number must support the title claim.
6. **Remove duplication.** If two boxes or slides make the same point, merge or give them distinct roles.
7. **Design visual hierarchy.** Prefer a scientific image/data plot + compact mechanism diagram over empty decorative boxes.
8. **Check proposal/paper consistency.** Slides may compress but should not introduce unsupported metrics or claims.
9. **Apply claim/evidence audit.** Use `../shared/claim-auditor.md` and `../shared/evidence-checker.md`.
10. **Write timed script.** Use `../shared/compression.md`; include transitions so the spoken logic matches page changes.

## Audience profiles

### Expert panel
Emphasize scientific gap, method, discriminating evidence, limitations, and technical credibility.

### Funding/program leadership
Emphasize why-now, strategic relevance, core scientific bottleneck, team/platform advantage, feasible route, and measurable outcome. Avoid turning the talk into pure capability construction.

### Broad interdisciplinary audience
Reduce notation; preserve mechanism and evidence. Use analogies only when they remain scientifically accurate.

## Time profiles

- **3 min:** 4–6 slides. Need → bottleneck → idea/3 tasks → outcome.
- **5 min:** 6–9 slides. Add foundation and one route/metric slide.
- **10 min:** 10–15 slides. Add evidence, method detail, innovation, risk.
- **20–25 min:** 18–30 slides depending on density; allow technical examples and transitions.

These are defaults, not quotas.

## Page architecture rules

- One page = one dominant question/message.
- Three research contents should normally have three clearly differentiated roles rather than three stylistic variants of the same box.
- If a key physical quantity/condition must be determined (e.g., inflow state, boundary parameter, latent variable), show explicitly where it enters the workflow.
- A technical route should show flow/dependency; a research-content slide should show scientific decomposition. Do not use the same diagram for both unless it truly serves both functions.
- Use numbers only when they are defensible and intended for assessment.

## Script rules

- Spoken text should explain causality that the slide cannot show, not read the slide verbatim.
- Use explicit transitions: “The previous page shows X; therefore the remaining question is Y.”
- For leadership briefings, explain the research content at least once; do not spend the entire talk on background and significance.
- Keep technical terminology stable across slides and script.

## Output contracts

### Slide redesign
Return: overall story, page-by-page table with title/message/visual/content, then optional script.

### One-slide request
Return: page title, 3-part content structure, recommended visual(s), bottom-line sentence, and 45–90 second narration.

### Timed script
Return page-linked spoken text with approximate emphasis allocation; preserve the deck's logic rather than inventing new content.

## Few-shot examples

Use `../shared/few-shot-policy.md` before transferring patterns from examples. Relevant cases:
- `examples/01-three-minute-leadership.md`
- `examples/02-three-box-page.md`
- `examples/03-long-talk-script.md`
- `examples/04-scientific-depth-restructure.md`

Examples guide narrative allocation, page roles, and compression. Current deck order, audience, duration, and approved metrics take precedence.

