---
name: deep-research
description: Execute autonomous multi-step research with 8-phase pipeline, source credibility scoring, and automated validation. Use for complex analytical reports, competitive landscapes, and literature reviews. Triggers: "deep research", "derin araştırma", "comprehensive research", "kapsamlı araştır".
tags: [research]
version: 1.0.0
source: https://github.com/199-biotechnologies/claude-deep-research-skill
---

# Deep Research

Autonomous multi-step research engine. Produces citation-backed reports with source credibility scoring and validation.

## When to use
- Complex analytical or competitive reports
- Multi-source research requiring triangulation
- Any research task that would take more than one web search

## Pipeline

```
Scope → Plan → Retrieve (parallel) → Triangulate
→ Outline → Synthesize → Critique → Refine → Package
```

## Instructions

See `methodology.md` for full 8-phase pipeline details.
See `quality-gates.md` for validation standards.

## Output
Structured report with inline citations, source credibility scores, and executive summary.
