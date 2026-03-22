# Contributing to ria-stackteam

## Adding a skill

1. Create a folder under `skills/your-skill-name/`
2. Add `SKILL.md` with this structure:

```markdown
---
name: your-skill-name
description: One sentence. What it does and when Claude should use it.
tags: [research, output, strategy, ops, meta]
author: your-github-username
version: 1.0.0
---

# Your Skill Name

## When to use
Trigger phrases and conditions.

## Instructions
Step-by-step instructions Claude will follow.

## Examples
Concrete usage examples.

## References
- Link to further reading if needed
```

3. Add optional reference files: `methodology.md`, `examples.md`, `references.md`
4. Add your skill to `registry.json`
5. Submit a PR

---

## Adding an agent

1. Create a folder under `agents/AGENT-NAME/`
2. Required files:
   - `agent.md` — Claude Code subagent definition (YAML frontmatter + instructions)
   - `SKILL.md` — skill-format wrapper so it can be installed as a skill too
   - `system-prompt.md` — full system prompt for claude.ai Projects
   - `mcp.json` — MCP dependencies this agent needs
3. Optional: `references/` folder with domain knowledge files
4. Add to `registry.json`
5. Submit a PR

---

## Adding an MCP config

1. Create `mcp/service-name.json`
2. Follow the format in existing MCP configs
3. Add to `mcp/README.md`
4. Submit a PR

---

## Registry entry format

Add your contribution to `registry.json`:

```json
{
  "id": "your-skill-name",
  "type": "skill",
  "name": "Your Skill Name",
  "description": "One sentence description.",
  "tags": ["research"],
  "author": "your-github-username",
  "path": "skills/your-skill-name"
}
```

---

## Standards

- Keep `SKILL.md` under 150 lines — use reference files for detail
- No hardcoded API keys or secrets
- Test your skill before submitting
- One skill per PR
