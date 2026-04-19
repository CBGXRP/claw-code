# Code Review Skill

## Purpose
Automate code review to ensure quality, consistency, and maintainability before changes are merged.

## Trigger
Run when code is modified or before a commit.

## Steps

1. **Style Check** — Verify code follows project style guidelines
   - Consistent naming conventions
   - Proper indentation and formatting
   - No hardcoded values or magic numbers

2. **Logic Review** — Analyze code logic for correctness
   - Edge cases handled
   - Error handling present at every level
   - No silent failures or swallowed exceptions

3. **Security Scan** — Check for common vulnerabilities
   - No hardcoded secrets or API keys
   - Input validation at system boundaries
   - SQL injection / XSS prevention

4. **Performance Check** — Identify potential bottlenecks
   - No N+1 queries
   - Appropriate data structures used
   - No unnecessary re-renders or recomputations

5. **Test Coverage** — Verify tests exist for changes
   - Unit tests for new functions
   - Integration tests for API changes
   - Minimum 80% coverage maintained

## Output Format
- CRITICAL: Must fix before merge
- HIGH: Should fix before merge
- MEDIUM: Fix in follow-up
- LOW: Suggestion for improvement

## Guardrails
- Never auto-approve security-sensitive code
- Always flag missing tests
- Flag any file over 800 lines for refactoring consideration
