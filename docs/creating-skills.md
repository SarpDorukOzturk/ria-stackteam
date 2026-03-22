# Creating Skills

A skill is a portable, reusable instruction module. One folder, one `SKILL.md`, optional reference files.

## Minimal structure

```
skills/your-skill-name/
└── SKILL.md
```

## Full structure

```
skills/your-skill-name/
├── SKILL.md          ← required: frontmatter + core instructions
├── methodology.md    ← optional: detailed approach, edge cases
├── examples.md       ← optional: real input/output pairs
└── references.md     ← optional: links, papers, templates
```

## SKILL.md template

```markdown
---
name: your-skill-name
description: One sentence. What it does AND when Claude should activate it. Include trigger phrases.
tags: [research, strategy, ops, output, meta, dev]
version: 1.0.0
author: your-github-username
---

# Your Skill Name

Brief description (1-2 sentences).

## When to use

List trigger conditions — phrases, contexts, task types.

## Instructions

Step-by-step procedure Claude will follow.
Be specific. Use numbered steps for ordered workflows.

## Output format

What the output should look like.

## Examples

One or two quick examples inline. More in examples.md.

## References

- See methodology.md for detailed approach
- External links if relevant
```

## Progressive disclosure

Keep `SKILL.md` under 150 lines. Anything longer goes in reference files:

| File | Contains |
|---|---|
| `SKILL.md` | Core instructions, triggers, quick steps |
| `methodology.md` | Detailed approach, decision trees, edge cases |
| `examples.md` | Real input/output pairs, templates |
| `references.md` | External links, papers, source material |

Claude loads `SKILL.md` first (~100 tokens), then loads reference files only when needed.

## Tags

Use these standardized tags:

| Tag | For |
|---|---|
| `research` | Information gathering, analysis, writing |
| `strategy` | Business frameworks, planning |
| `ops` | Operations, communications, tasks |
| `output` | File and document generation |
| `meta` | Skills that build or improve the system |
| `dev` | Software development |
| `data` | Data analysis, visualization |

## The `create-skill` shortcut

Instead of doing this manually, use the `create-skill` skill:

```
Use create-skill to build a new skill for [describe your workflow]
```

It will ask the right questions and generate the files.

## Adding to ria-stackteam

1. Place skill folder in `skills/`
2. Add entry to `registry.json`
3. Add to appropriate team in `marketplace.json`
4. Update `README.md` skills table
5. Submit PR

## Quality checklist

- [ ] Description includes trigger phrases
- [ ] Instructions are step-by-step, not vague
- [ ] `SKILL.md` is under 150 lines
- [ ] Long content is in reference files
- [ ] No hardcoded secrets or API keys
- [ ] Tested in at least one conversation
- [ ] Added to `registry.json`
