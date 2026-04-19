# Architecture Overview

## System Design

This project follows a modular architecture where each component owns its context and communicates through well-defined interfaces.

## Core Components

| Component | Responsibility | Location |
|-----------|---------------|----------|
| Agent Loop | Core execution cycle | src/ |
| Skills | Reusable AI workflows | .claude/skills/ |
| Hooks | Automated guardrails | .claude/hooks/ |
| Tools | Scripts and prompts | tools/ |
| Documentation | Decisions and runbooks | docs/ |

## Design Principles

1. **Token-efficient specs** — Agent files capped, reference docs never injected
2. **Event-driven orchestration** — No polling, stage transitions trigger on events
3. **Durable state** — Data survives restarts via persistent storage
4. **Deny-first safety** — Default deny, explicit allow. Strictest rule wins
5. **Static system prompts** — Cache never breaks, costs stay predictable

## Data Flow

```
User Input → Agent Loop → Skill Selection → Tool Execution → Hook Validation → Output
```

## Decision Records

See `docs/decisions/` for Architecture Decision Records (ADRs).
