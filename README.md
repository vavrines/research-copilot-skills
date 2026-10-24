# research-copilot-skills

An [Agent Skills](https://agentskills.io)-compatible skill stack for AI
coding agents (Claude Code, Codex, and others that read `SKILL.md`),
covering the recurring writing-and-judgment workflows of a researcher's life:

1. **paper-master** — develop, diagnose, revise, and review scientific
   manuscripts. Modes: `author` (draft your own paper), `reviewer`
   (journal referee report or advisor feedback on a student's draft, with
   JCP/JFM/CPC profiles), `revision` (assess a revised manuscript, or edit
   directly as co-author with a change log). Ships with the user's
   representative JCP papers as a style baseline under
   `paper-master/references/`.
2. **proposal-master** — turn calls, early ideas, and drafts into coherent,
   reviewable funding proposals (architect / diagnose / rewrite / red-team).
3. **research-architect** — assess whether an idea is worth doing; turn a
   method combination into a defensible question, killer examples, and a
   minimum publishable study.
4. **slide-storyteller** — turn proposals, papers, and plans into page-level
   presentation narratives and timed scripts.

Shared audit modules live in `skills/shared/` (closure-checker,
claim-auditor, evidence-checker, metric-designer, risk-reducer, compression,
research-rubric, few-shot policy). Each level-1 skill ships historical-style
few-shot examples under `examples/` that encode judgment patterns — guides,
not templates.

Core stance across all skills: optimize for scientific defensibility, not
rhetorical polish; fix structure before wording; establish novelty from
world knowledge plus active literature search, never assume it; never
fabricate citations or results.

## Layout

```
skills/
├── paper-master/
│   ├── SKILL.md
│   ├── examples/             # few-shot judgment cases
│   └── references/           # exemplar papers (LaTeX sources) as baseline
├── proposal-master/          # SKILL.md + examples/
├── research-architect/       # SKILL.md + examples/
├── slide-storyteller/        # SKILL.md + examples/
└── shared/                   # audit modules referenced as ../shared/*.md
```

## Install

### Claude Code (plugin)

```sh
claude plugin marketplace add vavrines/academic-writer
claude plugin install research-copilot@research-copilot-marketplace
```

### Claude Code / Codex / generic agents (symlink install)

```sh
git clone https://github.com/vavrines/academic-writer.git
cd academic-writer
./install.sh                 # installs for claude, codex, and ~/.agents/skills
./install.sh claude          # or pick specific targets: claude | codex | agents
```

The script symlinks each skill (plus `shared/`, which the skills reference
via relative paths) into `~/.claude/skills/`, `~/.codex/skills/`, and
`~/.agents/skills/`, so later updates are just a `git pull`.

### Manual

Copy all of `skills/` (including `shared/`) into your agent's skills
directory (`~/.claude/skills/`, `~/.codex/skills/`, or a project's
`.claude/skills/`). The `shared/` directory must sit next to the skills.

## Updating

- **Symlink install**: run `git pull` in the repo — no reinstall needed.
- **Claude Code plugin**:
  ```sh
  claude plugin marketplace update research-copilot-marketplace
  claude plugin update research-copilot@research-copilot-marketplace
  ```
- **Manual copy**: copy the updated `skills/` over the old one.

In all cases, start a new agent session for changes to take effect —
already-running sessions keep the skill content they loaded at start.

## Usage

Once installed, the skills trigger automatically on requests like:

- "帮我规划/起草这篇论文的方法部分" / "draft the introduction for this paper"
- "review this draft from my student and write feedback"
- "revise this manuscript as a co-author and summarize the changes"
- "Use paper-master in reviewer mode, JCP profile; assess contribution first"
- "use research-architect to check whether this combination is necessary"
- "turn this proposal into a 3-minute leadership briefing"

## Extending

When recurring needs show up in practice, add short notes to the relevant
skill file or `shared/` module, or a new few-shot example under the skill's
`examples/` (follow `shared/few-shot-policy.md`).

## License

MIT — see [LICENSE](LICENSE).
