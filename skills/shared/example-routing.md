# Routing Examples

- “这份指南我想报青年科学家，研究内容怎么设计？” → `proposal-master` (Architect)
- “现在这个本子偏能力建设，科学问题不够深。” → `proposal-master` (Diagnose + Red-team)
- “这篇稿子值不值得投 JCP？” → `paper-master` (Reviewer mode, JCP profile)
- “作者已经解决主要问题，只剩两点，帮我写最终审稿意见。” → `paper-master` (Revision mode)
- “Lean + SINDy 是不是好方向？需要哪些例子才能证明必要性？” → `research-architect`
- “把这份项目材料改成 3 分钟局长汇报。” → `slide-storyteller`

## v2 routing refinements

- “这个项目太像能力建设，如何把科学问题做深？” → `proposal-master` (Diagnose), then `examples/01-scientific-depth-vs-capability.md`.
- “指标太泛，哪些数字能放到考核页？” → `proposal-master` + `shared/metric-designer.md`, then `examples/03-metric-baseline-closure.md`.
- “证明是否真的支撑 superiority claim？” → `paper-master` (Author, proof audit), then `examples/02-proof-to-claim-audit.md`.
- “二审只剩两个问题，别重复已解决内容。” → `paper-master` (Revision), then `examples/03-final-round-review.md`.
- “A+B 能不能形成论文方向？” → `research-architect`; first find the necessity gap, then consult the nearest example by failure mode rather than topic name.
- “三分钟汇报背景太多、研究内容没讲。” → `slide-storyteller`, then `examples/01-three-minute-leadership.md`.
