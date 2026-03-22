# NEXUS â€” Project Context

This file is loaded when NEXUS needs project-specific context.

## Architecture notes
- OARIA: 21-agent system, Python/FastAPI, PostgreSQL, Redis, Docker
- Isabelle: Make.com + Telegram + Claude API automation
- Alfloria: Multi-division tech company infrastructure

## Key conventions
- All services run in Docker containers
- Environment config via .env files
- Database migrations managed manually (no Alembic yet)
- API versioning: /api/v1/...
