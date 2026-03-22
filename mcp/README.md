# MCP Configurations

Ready-to-use MCP server configuration files for ria-stackteam agents and skills.

## Available configs

| File | Service | Used by |
|---|---|---|
| `pangram.json` | Pangram AI detection | POLYXA |
| `notion.json` | Notion workspace | All agents |
| `slack.json` | Slack messaging | Ops team |
| `google-workspace.json` | Gmail, Calendar, Drive | Ops team |

## How to use

### Claude Code (settings.json)

Copy the relevant config into your `~/.claude/settings.json` under `mcpServers`:

```json
{
  "mcpServers": {
    "pangram": {
      "type": "url",
      "url": "https://text.api.pangramlabs.com/v3",
      "name": "pangram"
    }
  }
}
```

### Claude.ai

Go to Settings → Integrations and add the MCP server URL.

### Antigravity / Other tools

Refer to your tool's MCP configuration documentation.

## Adding a new MCP config

Create `service-name.json` with this structure:

```json
{
  "name": "service-name",
  "displayName": "Service Display Name",
  "description": "What this MCP does",
  "url": "https://mcp.service.com/endpoint",
  "type": "url",
  "tools": [
    {
      "name": "tool_name",
      "description": "What this tool does"
    }
  ],
  "setup": "Steps to get credentials or API access",
  "docs": "https://docs.service.com/mcp"
}
```
