# ria-stackteam

> Open-source agent & skill library for Claude Code, Claude.ai, Antigravity, and compatible AI tools.

Built by [Sarp Karaaslan](https://github.com/SarpDorukOzturk) · [Alfloria Group](https://alfloria.com) · [OARIA Inc.](https://oaria.ai)

---

## What's inside

| Type | Count | Description |
|---|---|---|
| Agents | 1+ | Full agent packages with system prompts, skills, and MCP configs |
| Skills | 10+ | Standalone, portable skill modules |
| MCP configs | 4+ | Ready-to-use MCP server configurations |

---

## Quick install

### Install everything
```bash
# Windows
.\install.ps1

# Linux / Mac
chmod +x install.sh && ./install.sh
```

### Install one team
```bash
.\install.ps1 --team research
```

### Install one skill
```bash
npx skills@latest add SarpDorukOzturk/ria-stackteam/deep-research
```

### Claude Code marketplace
```bash
claude plugin marketplace add SarpDorukOzturk/ria-stackteam
claude plugin install research@ria-stackteam
```

---

## Agents

### POLYXA — Research & Report Intelligence
Researches, drafts, and delivers professional reports across all domains.
Includes Pangram AI quality loop, multi-format output, and 8 bundled skills.

```bash
npx skills@latest add SarpDorukOzturk/ria-stackteam/agents/POLYXA
```

---

## Skills

| Skill | Description | Team |
|---|---|---|
| `deep-research` | Autonomous multi-step research with source validation | research |
| `content-research-writer` | Research + citations + hook + section feedback | research |
| `article-extractor` | Full article text & metadata from URLs | research |
| `meeting-insights-analyzer` | Meeting transcript → behavior & pattern report | research |
| `swot-analysis` | SWOT with actionable recommendations | strategy |
| `porters-five-forces` | Competitive forces analysis | strategy |
| `pestle-analysis` | Macro environment analysis | strategy |
| `internal-comms` | Status reports, newsletters, memos | ops |
| `docx` | Create & edit Word documents | output |
| `pdf` | Create, merge & annotate PDFs | output |
| `create-skill` | Build new skills with proper structure | meta |

---

## MCP Configurations

Pre-configured MCP server connections. See [`mcp/README.md`](mcp/README.md).

| MCP | Purpose |
|---|---|
| Pangram | AI text quality scoring |
| Notion | Knowledge base & docs |
| Slack | Team messaging |
| Google Workspace | Gmail, Calendar, Drive |

---

## Compatibility

Works with: Claude Code · Claude.ai · Antigravity · Cursor · Codex · Gemini CLI · OpenCode · Windsurf

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) to add agents, skills, or MCP configs.

## License

MIT — free to use, modify, and distribute.
