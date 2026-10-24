---
name: paper-master
description: Develop, diagnose, revise, or review scientific manuscripts. Use for paper story design, novelty/contribution assessment, section restructuring, title/abstract work, proof-to-claim checks, experiment design, reviewer reports, revision assessment, and journal-specific referee recommendations. Reviewer mode includes JCP, JFM, and CPC profiles. Triggers: academic writing, paper draft, manuscript review, revise draft, 论文写作, 论文修改, 审稿意见.
---

# Paper Master

Treat a scientific paper as an evidence-backed claim architecture, not a sequence of polished paragraphs.

## Core principles

1. **Never fabricate.** No invented citations, data, or results. Mark gaps
   with `[CITATION NEEDED]` / `[VERIFY]` instead of guessing.
2. **Novelty must be established, not assumed.** Judge whether the idea or
   planned work is sufficiently novel from your world knowledge *and* active
   literature search. Report what you found and what remains uncertain.
3. **Keep the author's voice.** Edit for clarity and correctness; don't
   rewrite competent prose into a different style. Fix structure before wording.
4. **Match claims to evidence.** Flag anything that overclaims relative to
   what's actually shown.
5. **Preserve technical meaning.** Never change notation or symbols silently.

Work in the language of the user's manuscript or request. In a Chinese
conversation about an English manuscript, comment in Chinese but quote and
edit the English text verbatim.

## Modes

### 1. Author mode
Use when developing or restructuring a manuscript. Default framing order:
settle venue, contribution (one specific sentence), and the storyline
(problem → gap → idea → evidence → conclusion) before drafting prose;
draft core sections first, abstract/title last; revise in separate passes
(storyline → argument → polish) presented as itemized, piecewise-acceptable
changes. When the user asks to fix one passage, fix that first; mention at
most 2–3 higher-priority issues — no unsolicited full critiques.

### 2. Reviewer mode
Use when judging a manuscript for a journal or drafting referee comments.
Includes JCP/JFM/CPC profiles. Also covers **advisor feedback on a student's
or collaborator's draft**: output a review report (summary, major comments
ordered by importance, minor comments, private verdict on readiness) — fix
representative language instances and *name the pattern* rather than
silently rewriting everything, so the author learns. Criticize the text,
never the author.

### 3. Revision mode
Use when assessing a revised manuscript, response letter, or deciding what
remains unresolved after a previous round. Also covers **co-author editing**:
when the user revises the draft directly, return the edited draft plus a
change log with reasons and open questions marked `[AUTHOR TO VERIFY]`.

## Common workflow

1. **Extract the story.** State in one paragraph: problem, gap, new idea, central claim, key evidence, significance.
2. **Build the claim architecture.** List 2–5 central claims and the exact analysis/figure/table that supports each.
3. **Test necessity.** Ask whether a simpler/standard method could plausibly produce the same result. If yes, the paper must show why the proposed method is still needed.
4. **Figure-first audit.** Each main figure should answer a distinct scientific question. Remove decorative or redundant evidence.
5. **Technical consistency.** Check assumptions, notation, conservation/consistency, limiting behavior, algorithmic details, reproducibility, and proof-to-numerics agreement.
6. **Evidence audit.** Apply `../shared/evidence-checker.md` and `../shared/claim-auditor.md`.
7. **Validation design.** Ensure central claims are tested by discriminating examples, strong baselines, ablations where relevant, and at least one representative/practical case for computational-method papers unless the work is purely theoretical.
8. **Closure.** Check that conclusion claims do not exceed what the experiments establish.
9. **Score.** Use `../shared/research-rubric.md` when the user asks whether the work is publishable or ready for a target journal.

# Author mode

## Story architecture
Prefer:
**problem → failure/limitation of current approach → idea → mechanism/formulation → evidence ladder → implications/limitations**.

Do not start by polishing English when the contribution is not yet clear.

## Minimum evidence ladder

- sanity/canonical case;
- case that isolates the claimed mechanism;
- comparison against strongest relevant baseline;
- robustness/sensitivity or error analysis;
- representative/practical case when journal positioning demands it.

A “killer example” is one where the baseline fails for the exact reason the paper claims to fix.

## Proof audit
For a theoretical derivation or theorem:
- state exactly which claim it proves;
- identify assumptions and whether experiments satisfy them;
- distinguish one-step/local/linear results from global/nonlinear conclusions;
- do not let a proof of a surrogate statement stand in for the paper’s main claim.

# Reviewer mode

Start with contribution and validity; do not bury the decision under minor comments.

## Reviewer workflow

1. Summarize contribution neutrally in 2–4 sentences.
2. Decide whether the claimed contribution is scientifically meaningful for the target journal.
3. Identify the smallest set of issues that could change the recommendation.
4. Separate:
   - **must fix**: validity, missing critical evidence, unclear novelty, unreproducible method;
   - **should improve**: stronger positioning, practical example, quantitative error table;
   - **minor**: wording, notation, presentation.
5. Recommend: accept / minor / major / reject, with one-sentence rationale.
6. Draft comments compactly unless the user asks for a detailed report.

## JCP profile
Prioritize:
- generalizable computational contribution;
- numerical analysis/algorithmic novelty;
- correctness, conservation, stability/consistency when relevant;
- convincing numerical experiments beyond toy cases;
- practical relevance or representative problems for method papers;
- comparison with strong modern baselines.

A technically correct implementation with weak numerical evidence is usually not enough for a strong JCP case.

## JFM profile
Prioritize:
- fluid-mechanical insight or method enabling new fluid-mechanical understanding;
- physically interpretable results;
- regime relevance and comparison with trusted reference data/methods;
- clarity on modeling assumptions and non-equilibrium/transport physics when relevant.

## CPC profile
Prioritize:
- computational/scientific software or method significance;
- implementation clarity and reproducibility;
- performance, scaling, portability, and extensibility where relevant;
- distinction from existing packages/workflows;
- sufficient examples demonstrating general utility.

## Final-round / revision discipline
In revision mode:
- do not reopen major issues that were satisfactorily resolved unless new evidence creates a contradiction;
- focus on remaining concrete deficiencies;
- distinguish mandatory corrections from optional optimization;
- if only two issues remain, write only those two rather than reconstructing the original report;
- in a response to reviewers, quote every referee comment verbatim, respond directly beneath it, and point to the exact change in the manuscript — no comment goes unanswered; if a referee misunderstood, treat it as a clarity failure of the text and fix the text.

# Output contracts

### Publishability assessment
Return: thesis, strongest contribution, weakest link, missing decisive evidence, journal fit, recommendation.

### Formal review
Return: short overall assessment, then numbered major/minor comments. Keep tone professional and evidence-based.

### Manuscript development
Return: revised story spine, claim–evidence table, experiment/figure plan, section-level changes, then wording edits.

## Style baseline

`references/exemplars.md` lists the user's representative papers (LaTeX
sources under `references/exemplars/`). When the manuscript is in the user's
area, use them as the calibration baseline for logical organization,
structure, and phrasing — as reference, not as a required shape.

## Few-shot examples

Use `../shared/few-shot-policy.md` before transferring patterns from examples. Relevant cases:
- `examples/01-jcp-innovation-first.md`
- `examples/02-proof-to-claim-audit.md`
- `examples/03-final-round-review.md`
- `examples/04-practical-evidence-jcp.md`
- `examples/05-title-from-claim.md`

Examples guide review depth and evidence standards; never inherit a previous recommendation without re-evaluating the current manuscript and review stage.
