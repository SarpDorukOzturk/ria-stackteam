# Create Skill — Examples

## Minimal skill (no reference files)

```markdown
---
name: git-commit-message
description: Write conventional commit messages. Use when user wants to commit code and needs a message, or asks "write a commit message for this change".
tags: [ops]
version: 1.0.0
author: SarpDorukOzturk
---

# Git Commit Message

Write commit messages following the Conventional Commits spec.

## Format

```
type(scope): short description

body (optional, wrap at 72 chars)

footer (optional — BREAKING CHANGE, closes #issue)
```

## Types
- feat: new feature
- fix: bug fix
- docs: documentation
- refactor: code restructure without behavior change
- test: tests
- chore: tooling, dependencies

## Rules
- Subject line: imperative mood, no period, max 72 chars
- "Add feature" not "Added feature" or "Adding feature"
- Be specific: "Fix null pointer in user auth" not "Fix bug"
```

---

## Skill with reference files

```markdown
---
name: code-review
description: Review code for quality, security, and best practices. Use when user asks to review code, check a PR, or audit a file. Triggers: "review this code", "check my PR", "audit", "kodu incele".
tags: [dev]
version: 1.0.0
author: SarpDorukOzturk
---

# Code Review

Systematic code review covering quality, security, and maintainability.

## When to use
- Reviewing a PR or diff
- Auditing an existing file
- Pre-commit quality check

## Quick checklist
See checklist.md for the full review checklist.

## Severity levels
- CRITICAL: security vulnerability, data loss risk
- HIGH: logic error, performance issue
- MEDIUM: code smell, maintainability concern
- LOW: style, naming, minor improvement

## Output format
Group findings by severity. For each:
- Location (file:line)
- Severity
- Issue description
- Suggested fix
```

Reference file `checklist.md` would contain the full 50-point review checklist.

---

## Agent-style skill (wraps an agent)

```markdown
---
name: NEXUS
description: Development agent for full-stack coding tasks. Use for writing features, fixing bugs, reviewing PRs, setting up projects. Triggers: "write code", "build feature", "fix bug", "implement", "kod yaz", "geliştir".
tags: [dev, agent]
version: 1.0.0
author: SarpDorukOzturk
mcp_required: []
---

# NEXUS

Full agent definition: see agent.md
System prompt: see system-prompt.md
```
