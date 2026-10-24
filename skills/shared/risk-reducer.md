# Risk Reducer

Purpose: reduce execution risk without hollowing out the scientific contribution.

## Procedure

1. Identify the main deliverable and its critical dependency chain.
2. Find the weakest dependency: data, hardware, solver, coupling, theory, training, validation, integration, or external partner.
3. Separate:
   - scientific risk — hypothesis may be false;
   - engineering risk — integration may fail;
   - schedule risk — too many coupled tasks;
   - evidence risk — cannot produce convincing validation.
4. Construct three routes:
   - **Core route**: minimum study that can prove the central claim.
   - **Enhanced route**: adds scope or realism if core succeeds.
   - **Fallback route**: preserves a publishable/deliverable result if a dependency fails.
5. Prefer modular interfaces and offline coupling before closed-loop/high-autonomy claims unless the latter are essential.

## Risk-reduction heuristics

- Replace “fully autonomous” with “decision-support + human confirmation” when autonomy is not the research question.
- Replace new software platforms with reusable computational modules when software delivery is not central.
- Replace many weak examples with 2–4 discriminating cases.
- Replace cross-domain generality claims with a defined regime ladder.
- Do not add machine learning unless it resolves a named bottleneck.
