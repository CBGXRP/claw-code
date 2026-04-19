# Release Skill

## Purpose
Manage the release process from version bump through deployment, ensuring consistent and reliable rollouts.

## Trigger
Run when preparing a new release or on explicit request.

## Steps

1. **Pre-Release Checks**
   - All tests passing on main branch
   - No CRITICAL or HIGH security issues open
   - CHANGELOG.md updated with release notes
   - Version bump in package.json / pyproject.toml

2. **Generate Release Notes**
   - Parse commit history since last release
   - Categorize: Features, Fixes, Breaking Changes, Deprecations
   - Include migration guide for breaking changes
   - Acknowledge contributors

3. **Create Release**
   - Tag release with semantic version (major.minor.patch)
   - Push tag to remote
   - Create GitHub release with notes
   - Attach any build artifacts

4. **Post-Release**
   - Verify deployment succeeds in staging
   - Monitor error rates for 30 minutes post-deploy
   - Announce release to team
   - Update project documentation

## Version Convention
- MAJOR: Breaking changes
- MINOR: New features (backward compatible)
- PATCH: Bug fixes (backward compatible)

## Guardrails
- Never release on Friday (unless hotfix)
- Always have a rollback plan
- Requires at least one code review approval
- Block release if any CRITICAL issues are open
