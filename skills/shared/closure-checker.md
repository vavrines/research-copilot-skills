# Closure Checker

Purpose: test whether a proposal, paper, or presentation forms a complete logic chain.

## Canonical chain

**Need / observed failure** → **scientific question** → **objective** → **research content** → **method / technical route** → **evidence or metric** → **deliverable / conclusion**

## Procedure

1. Extract each node in one sentence.
2. Build a mapping table; do not infer missing links silently.
3. Mark every orphan node:
   - objective with no research task;
   - task with no objective;
   - metric not tied to a task;
   - claimed innovation with no validating experiment;
   - deliverable that is not produced by the technical route.
4. Distinguish two kinds of mismatch:
   - **semantic mismatch**: related words but different scientific meaning;
   - **granularity mismatch**: one side is too broad to be verifiably matched.
5. Repair by changing the minimum number of nodes. Prefer revising the broadest node rather than adding more tasks.

## Strong closure tests

Ask:
- If research content #2 succeeds, which objective becomes demonstrably true?
- Which metric would fail if the core scientific claim were false?
- Does every stated bottleneck appear again in either the objective or validation plan?
- Is any deliverable included only because the template expects it?

## Output

Return:
1. closure diagnosis;
2. mapping table;
3. 1–3 highest-impact repairs;
4. revised wording only after structural repair.
