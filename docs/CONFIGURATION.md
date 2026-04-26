# Configuration Guide

This guide covers all configuration options for the Claude Skills Collection.

## Settings File

The `settings.json` file contains global configuration for Claude Code.

### Location

```
~/.claude/settings.json
```

### Configuration Options

```json
{
  "skillListingMaxDescChars": 4096,
  "skillListingBudgetFraction": 0.05,
  "env": {},
  "model": "deepseek-ai/deepseek-v4-pro",
  "enabledPlugins": {
    "playwright@claude-plugins-official": true,
    "ralph-loop@claude-plugins-official": true,
    "figma@claude-plugins-official": true,
    "plugin-dev@claude-plugins-official": true,
    "chrome-devtools-mcp@claude-plugins-official": true,
    "coderabbit@claude-plugins-official": true,
    "postman@claude-plugins-official": true,
    "claude-code-setup@claude-plugins-official": true,
    "claude-md-management@claude-plugins-official": true,
    "code-review@claude-plugins-official": true,
    "code-simplifier@claude-plugins-official": true,
    "commit-commands@claude-plugins-official": true,
    "feature-dev@claude-plugins-official": true,
    "frontend-design@claude-plugins-official": true,
    "hookify@claude-plugins-official": true,
    "mcp-server-dev@claude-plugins-official": true,
    "pr-review-toolkit@claude-plugins-official": true,
    "security-guidance@claude-plugins-official": true,
    "session-report@claude-plugins-official": true,
    "skill-creator@claude-plugins-official": true,
    "github@claude-plugins-official": true,
    "discord@claude-plugins-official": true,
    "gitlab@claude-plugins-official": true,
    "linear@claude-plugins-official": true,
    "asana@claude-plugins-official": true,
    "telegram@claude-plugins-official": true,
    "firebase@claude-plugins-official": true,
    "context7@claude-plugins-official": true,
    "greptile@claude-plugins-official": true,
    "imessage@claude-plugins-official": true,
    "laravel-boost@claude-plugins-official": true,
    "serena@claude-plugins-official": true,
    "terraform@claude-plugins-official": true,
    "fakechat@claude-plugins-official": true,
    "oh-my-claudecode@claude-plugins-official": true
  },
  "mcpServers": {
    "chrome-devtools": {
      "command": "npx",
      "args": ["chrome-devtools-mcp@latest"]
    },
    "figma": {
      "type": "http",
      "url": "https://mcp.figma.com/mcp"
    },
    "playwright": {
      "command": "npx",
      "args": ["@playwright/mcp@latest"]
    },
    "github": {
      "type": "http",
      "url": "https://api.githubcopilot.com/mcp/",
      "headers": {
        "Authorization": "Bearer ${GITHUB_PERSONAL_ACCESS_TOKEN}"
      }
    },
    "gitlab": {
      "type": "http",
      "url": "https://gitlab.com/api/v4/mcp"
    },
    "linear": {
      "type": "http",
      "url": "https://mcp.linear.app/mcp"
    },
    "asana": {
      "type": "sse",
      "url": "https://mcp.asana.com/sse"
    },
    "discord": {
      "command": "bun",
      "args": ["run", "--cwd", "${CLAUDE_PLUGIN_ROOT}/discord", "--shell=bun", "--silent", "start"]
    },
    "telegram": {
      "command": "bun",
      "args": ["run", "--cwd", "${CLAUDE_PLUGIN_ROOT}/telegram", "--shell=bun", "--silent", "start"]
    },
    "firebase": {
      "command": "npx",
      "args": ["-y", "firebase-tools@latest", "mcp"]
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp"]
    },
    "greptile": {
      "type": "http",
      "url": "https://api.greptile.com/mcp",
      "headers": {
        "Authorization": "Bearer ${GREPTILE_API_KEY}"
      }
    },
    "imessage": {
      "command": "bun",
      "args": ["run", "--cwd", "${CLAUDE_PLUGIN_ROOT}/imessage", "--shell=bun", "--silent", "start"]
    },
    "laravel-boost": {
      "command": "php",
      "args": ["artisan", "boost:mcp"]
    },
    "serena": {
      "command": "uvx",
      "args": ["--from", "git+https://github.com/oraios/serena", "serena", "start-mcp-server"]
    },
    "terraform": {
      "command": "docker",
      "args": [
        "run",
        "-i",
        "--rm",
        "-e", "TFE_TOKEN=${TFE_TOKEN}",
        "hashicorp/terraform-mcp-server:0.4.0"
      ]
    },
    "fakechat": {
      "command": "bun",
      "args": ["run", "--cwd", "${CLAUDE_PLUGIN_ROOT}/fakechat", "--shell=bun", "--silent", "start"]
    },
    "t": {
      "command": "node",
      "args": ["${CLAUDE_PLUGIN_ROOT}/oh-my-claudecode/bridge/mcp-server.cjs"]
    }
  },
  "effortLevel": "max"
}
```

## Environment Variables

### Required Variables

None required for basic usage.

### Optional Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `GITHUB_PERSONAL_ACCESS_TOKEN` | GitHub API token | - |
| `GREPTILE_API_KEY` | Greptile API key | - |
| `TFE_TOKEN` | Terraform Enterprise token | - |

## Skill Configuration

Each skill can have its own configuration. See individual skill documentation for details.

## Plugin Configuration

### Enabling/Disabling Plugins

Edit the `enabledPlugins` section in `settings.json`:

```json
{
  "enabledPlugins": {
    "plugin-name@claude-plugins-official": true,
    "another-plugin@claude-plugins-official": false
  }
}
```

### MCP Server Configuration

Configure MCP servers in the `mcpServers` section:

```json
{
  "mcpServers": {
    "server-name": {
      "command": "command",
      "args": ["arg1", "arg2"]
    }
  }
}
```

## Advanced Configuration

### Model Selection

Change the default model:

```json
{
  "model": "claude-opus-4-7"
}
```

### Effort Level

Set the effort level for Claude Code:

```json
{
  "effortLevel": "max"
}
```

Options: `min`, `normal`, `max`

### Skill Display

Control how skills are displayed:

```json
{
  "skillListingMaxDescChars": 4096,
  "skillListingBudgetFraction": 0.05
}
```

## Troubleshooting

### Settings Not Applied

**Solution**: Restart Claude Code after modifying settings.json.

### Plugin Not Loading

**Solution**: Check that the plugin is enabled in settings.json and properly installed.

### MCP Server Connection Failed

**Solution**: Verify the MCP server configuration and required environment variables.

## Best Practices

1. **Backup Settings**: Always backup your settings.json before making changes
2. **Test Changes**: Test configuration changes in a safe environment first
3. **Keep Updated**: Regularly update plugins and MCP servers
4. **Monitor Performance**: Adjust effort level based on your needs
5. **Security**: Never commit sensitive environment variables

## Need Help?

- 📧 [Email Support](mailto:support@example.com)
- 💬 [Discord Community](https://discord.gg/)
- 📝 [GitHub Issues](https://github.com/gauravv-g/claude-skills-collection/issues)

---

**Happy Configuring! ⚙️**
