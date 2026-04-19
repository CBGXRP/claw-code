# API Module

## Purpose
HTTP API layer handling external requests and responses.

## Key Files
- Routes and middleware definitions
- Request validation schemas
- Response format helpers

## Rules
- All endpoints must have input validation
- Consistent error response format
- Rate limiting on all public endpoints
- Never expose internal errors to clients

## Dependencies
- Internal: persistence module for data access
- External: authentication service
