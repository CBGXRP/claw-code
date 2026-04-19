# Claude Code Project Structure

## Project Overview
A modular repository designed for building Claude Code projects with structured AI context, reusable skills, and automated workflows.

## Key Components

- **CLAUDE.md** — Project memory & instructions. This file. Claude reads it every session.
- **.claude/skills/** — Reusable AI workflows (code-review, refactor, release)
- **.claude/hooks/** — Automated checks & guardrails
- **docs/** — Architecture decisions, ADRs, runbooks
- **src/** — Core application modules (each with its own CLAUDE.md for context)
- **tools/** — Scripts and reusable prompts

## Core Principle

- Every time Claude makes a mistake → **add a rule**
- Every time you repeat yourself → **add a workflow**
- Every time something breaks → **add a guardrail**

Claude literally trains itself on your project. The more you use it, the smarter it gets.

## Best Practices

- Keep CLAUDE.md focused and structured — this is Claude's memory
- Use **skills** for reusable AI workflows (don't repeat prompts)
- Use **hooks** for automation checks and guardrails
- Document architecture decisions in docs/decisions/
- Maintain modular repository design — each src/ module owns its context

## Getting Started

1. Clone the repository
2. Configure Claude settings in `.claude/settings.json`
3. Define project context in `CLAUDE.md` (this file)
4. Add reusable skills to `.claude/skills/`
5. Set up hooks in `.claude/hooks/` for guardrails
6. Start building modules in `src/`

## Project Rules

- Never commit secrets or API keys
- All code must pass hook checks before commit
- Use skills instead of ad-hoc prompting
- Update this file when the project evolves
- Keep module CLAUDE.md files in sync with their code

## Detected Stack
- Languages: Rust, TypeScript
- Frameworks: none detected from the supported starter markers

## Verification
- Run Rust verification from `rust/`: `cargo fmt`, `cargo clippy --workspace --all-targets -- -D warnings`, `cargo test --workspace`
- `src/` and `tests/` are both present; update both surfaces together when behavior changes

## Repository Shape
- `rust/` contains the Rust workspace and active CLI/runtime implementation
- `src/` contains source files that should stay consistent with generated guidance and tests
- `tests/` contains validation surfaces that should be reviewed alongside code changes

## Working Agreement
- Prefer small, reviewable changes and keep generated bootstrap files aligned with actual repo workflows
- Keep shared defaults in `.claude.json`; reserve `.claude/settings.local.json` for machine-local overrides
- Do not overwrite existing `CLAUDE.md` content automatically; update it intentionally when repo workflows change
