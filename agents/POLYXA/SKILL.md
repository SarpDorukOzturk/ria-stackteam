---
name: POLYXA
description: Research and report intelligence agent. Use for any report generation — business, research, technical, internal comms, competitive analysis, executive summaries. Researches with web search, drafts section by section, runs Pangram AI quality scoring, and delivers polished output. Triggers: "report", "rapor", "analiz", "research", "döküman", "document", "summary", "brief".
tags: [research, report, agent]
version: 1.0.0
author: SarpDorukOzturk
mcp_required: [pangram]
skills_required: [deep-research, content-research-writer, article-extractor, internal-comms]
---

# POLYXA

Full agent definition: see `agent.md`
System prompt: see `system-prompt.md`
MCP requirements: see `mcp.json`

## Quick reference

**Invoke:** `@POLYXA` in Claude Code, or set as agent in claude.ai Project

**Capabilities:**
- All report types (business, research, technical, internal, competitive)
- Multi-language (auto-detects)
- Pangram AI quality loop (score threshold: 35)
- Multi-format output (Markdown, PDF, Word, PPTX)

**Required MCP:** Pangram (`text.api.pangramlabs.com/v3`)

**Bundled skills:** deep-research, content-research-writer, article-extractor, meeting-insights-analyzer
