# Refactor Skill

## Purpose
Systematically refactor code for clarity, performance, and maintainability without changing behavior.

## Trigger
Run when code smells are detected or on explicit request.

## Steps

1. **Identify Targets** — Find code that needs refactoring
   - Files over 800 lines
   - Functions over 50 lines
   - Deep nesting (>4 levels)
   - Duplicated code patterns
   - Dead code (unused imports, variables, functions)

2. **Plan Changes** — Document what will change and why
   - List each refactor with rationale
   - Ensure no behavior change
   - Identify dependencies that may break

3. **Execute Refactoring** — Apply changes incrementally
   - One refactor at a time
   - Run tests after each change
   - Commit after each successful refactor

4. **Verify** — Confirm nothing broke
   - All existing tests still pass
   - No new lint warnings
   - Code coverage maintained or improved

## Refactoring Patterns

- Extract function (long functions → small focused ones)
- Extract module (tightly coupled → separated concerns)
- Replace conditionals with polymorphism
- Remove dead code
- Consolidate duplicates

## Guardrails
- Never refactor and add features simultaneously
- Always have green tests before starting
- One refactor per commit
- If tests break, revert and reassess
