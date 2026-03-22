# Creating Agents

An agent in ria-stackteam is a full package: system prompt, subagent definition, MCP requirements, and bundled skills.

## Folder structure

```
agents/AGENT-NAME/
├── agent.md          ← Claude Code subagent (required)
├── SKILL.md          ← skill-format wrapper (required)
├── system-prompt.md  ← full system prompt for claude.ai (required)
├── mcp.json          ← MCP dependencies (required, can be empty)
└── references/       ← domain knowledge files (optional)
    ├── context.md
    └── examples.md
```

## agent.md format

```markdown
---
name: AGENT-NAME
description: One sentence — what it does and WHEN to invoke it. Include trigger words. Use PROACTIVELY if it should auto-activate.
tools: WebSearch, WebFetch, Read, Write, mcp__service__tool
model: sonnet
---

# AGENT-NAME — Short Title

## Identity
What this agent is and isn't.

## Language
How it handles language detection.

## Core workflow
Step-by-step procedure.

## Skills to invoke
Table of skill → when to use it.

## Hard rules
Non-negotiable constraints.

## Session start
Exactly what to say at the start of a session.
```

## SKILL.md format (wrapper)

```markdown
---
name: AGENT-NAME
description: Same as agent.md description.
tags: [team-tag, agent]
version: 1.0.0
author: your-github-username
mcp_required: [service-name]
skills_required: [skill-one, skill-two]
---

# AGENT-NAME

Full agent definition: see agent.md
System prompt: see system-prompt.md
MCP requirements: see mcp.json

## Quick reference
Key capabilities, invocation method, required MCP.
```

## mcp.json format

```json
{
  "description": "MCP servers required by this agent",
  "required": [
    {
      "name": "service-name",
      "description": "Why this agent needs it",
      "url": "https://mcp.service.com/endpoint",
      "tools_used": ["tool_name"],
      "setup": "How to get access"
    }
  ],
  "optional": []
}
```

## Naming conventions

- Agent names: ALL CAPS, short (4-8 chars) — POLYXA, NEXUS, VEGA, OPS
- Pick names that suggest function but aren't generic
- Each agent should have a clear, non-overlapping domain

## Adding to registry

In `registry.json`, add:

```json
{
  "id": "AGENT-NAME",
  "type": "agent",
  "name": "Agent Display Name",
  "description": "One sentence.",
  "tags": ["team-tag"],
  "path": "agents/AGENT-NAME",
  "install": "npx skills@latest add SarpDorukOzturk/ria-stackteam/agents/AGENT-NAME"
}
```

## Quality checklist

Before submitting an agent:
- [ ] `agent.md` has clear trigger conditions in description
- [ ] `system-prompt.md` is complete and tested
- [ ] `mcp.json` lists all dependencies
- [ ] Agent does one thing well — not a general assistant
- [ ] Session start message is defined
- [ ] Hard rules are explicit
- [ ] Added to `registry.json` and `marketplace.json`
