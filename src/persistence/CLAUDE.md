# Persistence Module

## Purpose
Data access layer abstracting storage operations behind a repository pattern.

## Key Files
- Repository interfaces and implementations
- Database migration scripts
- Query builders and optimizers

## Rules
- All data access through repository interfaces (never raw queries in business logic)
- Parameterized queries only — no string interpolation
- Connection pooling for all database operations
- All write operations must be transactional

## Dependencies
- Internal: none (leaf module)
- External: database driver, cache layer
