# Getting Started with ria-stackteam

## What is ria-stackteam?

ria-stackteam is an open-source library of agents, skills, and MCP configurations for Claude and compatible AI tools. Install everything at once, or pick only what you need.

## Install options

### 1. Everything (recommended for first-time setup)

```bash
# Windows
.\install.ps1

# Linux / Mac
./install.sh
```

### 2. One team

```bash
# Windows
.\install.ps1 -Team research

# Linux / Mac
./install.sh research
```

Available teams: `research`, `strategy`, `ops`, `output`, `meta`

### 3. One skill

```bash
# Windows
.\install.ps1 -Skill deep-research

# Linux / Mac
./install.sh all deep-research
```

### 4. Via Claude Code marketplace

```bash
claude plugin marketplace add SarpDorukOzturk/ria-stackteam
claude plugin install research@ria-stackteam
```

### 5. Via npx

```bash
npx skills@latest add SarpDorukOzturk/ria-stackteam/deep-research
```

## After installing

Open Claude Code and verify:

```
/agents    → should list POLYXA
/skills    → should list all installed skills
```

## Setting up MCP connections

Some agents require MCP servers. See `mcp/README.md` for setup instructions.

For POLYXA, you need Pangram:
1. Create account at [pangram.com](https://pangram.com)
2. Go to claude.ai → Settings → Integrations
3. Add MCP URL: `https://text.api.pangramlabs.com/v3`

## Using POLYXA

In Claude Code:
```
@POLYXA write a competitive analysis report on [company]
```

In claude.ai Project:
- Copy `agents/POLYXA/system-prompt.md` into Project Instructions
- Start a conversation and type your report request

## Next steps

- See `docs/creating-agents.md` to build your own agent
- See `docs/creating-skills.md` to build a new skill
- See `CONTRIBUTING.md` to contribute to ria-stackteam
