# MCP Setup Guide

MCP (Model Context Protocol) servers give agents access to external tools and services.

## Currently supported

| Service | File | Used by |
|---|---|---|
| Pangram | `mcp/pangram.json` | POLYXA |
| Notion | `mcp/notion.json` | All agents |
| Slack | `mcp/slack.json` | Ops team |
| Google Workspace | `mcp/google-workspace.json` | Ops team |

---

## Setup by platform

### claude.ai

1. Go to **Settings → Integrations**
2. Click **Add MCP Server**
3. Enter the URL from the relevant `mcp/*.json` file
4. Authorize if prompted

### Claude Code

Add to `~/.claude/settings.json`:

```json
{
  "mcpServers": {
    "pangram": {
      "type": "url",
      "url": "https://text.api.pangramlabs.com/v3"
    },
    "notion": {
      "type": "url",
      "url": "https://mcp.notion.com/mcp"
    },
    "slack": {
      "type": "url",
      "url": "https://mcp.slack.com/mcp"
    },
    "gmail": {
      "type": "url",
      "url": "https://gmail.mcp.claude.com/mcp"
    },
    "google-calendar": {
      "type": "url",
      "url": "https://gcal.mcp.claude.com/mcp"
    }
  }
}
```

The `install.ps1` script in `ria-claude-config` handles this automatically.

### Antigravity

Settings → MCP Servers → Add Server → paste the URL.

---

## Pangram setup (required for POLYXA)

1. Create account at [pangram.com](https://pangram.com)
2. The MCP URL is: `https://text.api.pangramlabs.com/v3`
3. Connect via your platform's MCP settings
4. POLYXA will automatically call `check_text` during the quality loop

---

## Adding a new MCP to ria-stackteam

1. Create `mcp/service-name.json`:

```json
{
  "name": "service-name",
  "displayName": "Service Name",
  "description": "What this MCP does for agents",
  "url": "https://mcp.service.com/endpoint",
  "type": "url",
  "tools": [
    {
      "name": "tool_name",
      "description": "What this tool does"
    }
  ],
  "setup": "Step-by-step setup instructions",
  "docs": "https://docs.service.com/mcp"
}
```

2. Add to `mcp/README.md` table
3. Reference it in any agent's `mcp.json` that needs it
4. Submit PR
