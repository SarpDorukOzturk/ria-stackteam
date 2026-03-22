---
name: create-skill
description: Build new Claude skills with proper structure, progressive disclosure, and bundled resources. Use when user wants to create a new skill, turn a repeated workflow into a reusable skill, or improve an existing skill. Triggers: "create a skill", "write a skill", "make a skill", "turn this into a skill", "skill oluştur".
tags: [meta]
version: 1.0.0
author: SarpDorukOzturk
---

# Create Skill

Turn any repeated workflow, domain knowledge, or tool integration into a reusable Claude skill.

## When to use

- User wants to create a new skill from scratch
- User has a workflow they repeat every session
- User wants to package domain knowledge for reuse
- User wants to improve an existing skill

## Skill structure

Every skill is a folder with:

```
skill-name/
├── SKILL.md          ← required: frontmatter + instructions
├── methodology.md    ← optional: detailed approach
├── examples.md       ← optional: concrete examples
└── references.md     ← optional: external resources
```

## SKILL.md frontmatter

```yaml
---
name: skill-name
description: One sentence. What it does AND when Claude should activate it. Include trigger phrases.
tags: [research, strategy, ops, output, meta]
version: 1.0.0
author: github-username
---
```

## Instructions quality checklist

Good SKILL.md instructions:
- State the core purpose in the first paragraph
- Define clear trigger conditions (what phrases/contexts activate this)
- Give step-by-step procedure if the skill has a workflow
- Include concrete examples, not just abstractions
- Reference bundled files: "See methodology.md for details"
- Stay under 150 lines — put detail in reference files

## Progressive disclosure pattern

```
SKILL.md (always loaded ~100 tokens)
  └── Short: what it is, when to use, quick steps

methodology.md (loaded on demand)
  └── Long: detailed approach, edge cases, decision trees

examples.md (loaded on demand)
  └── Concrete: real input/output pairs

references.md (loaded on demand)
  └── Links, papers, source material
```

## Workflow

1. Ask: "What does this skill do in one sentence?"
2. Ask: "What phrases or situations should trigger it?"
3. Ask: "Is there a step-by-step procedure?"
4. Ask: "Are there reference files needed (methodology, examples)?"
5. Draft `SKILL.md` frontmatter + instructions
6. Create reference files if needed
7. Show final structure for review
8. Ask: "Should this go into ria-stackteam?"

## Adding to ria-stackteam

After creating the skill:
1. Place in `skills/skill-name/`
2. Add entry to `registry.json`
3. Add to appropriate team in `marketplace.json`
4. Commit and push

## Examples

See `examples.md` for sample skill structures across different categories.
