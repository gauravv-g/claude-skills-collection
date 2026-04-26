# oh-my-claudecode Installation Summary

## Date: 2026-04-26

## What Was Installed

**oh-my-claudecode** - Multi-agent orchestration system for Claude Code

### Plugin Details
- **Name:** oh-my-claudecode
- **Version:** 4.13.4
- **Description:** Multi-agent orchestration system for Claude Code
- **Repository:** https://github.com/Yeachan-Heo/oh-my-claudecode
- **License:** MIT

### 39 Skills Included

1. **ai-slop-cleaner** - Clean up AI-generated code slop
2. **ask** - Ask external providers (Codex, Gemini, etc.)
3. **autopilot** - Autopilot mode for autonomous development
4. **autoresearch** - Automated research capabilities
5. **cancel** - Cancel running operations
6. **ccg** - Code generation capabilities
7. **configure-notifications** - Configure system notifications
8. **debug** - Debugging assistance
9. **deep-dive** - Deep dive analysis
10. **deep-interview** - Socratic questioning for requirements clarification
11. **deepinit** - Deep initialization
12. **external-context** - External context management
13. **hud** - Heads-up display for session information
14. **learner** - Learning and adaptation
15. **mcp-setup** - MCP server setup
16. **omc-doctor** - Diagnostic and troubleshooting
17. **omc-reference** - Reference documentation
18. **omc-setup** - OMC setup wizard
19. **omc-teams** - Team orchestration setup
20. **plan** - Planning capabilities
21. **project-session-manager** - Project session management
22. **ralph** - Ralph loop management
23. **ralplan** - Ralph planning
24. **release** - Release management
25. **remember** - Memory and recall
26. **sciomc** - Scientific OMC capabilities
27. **self-improve** - Self-improvement
28. **setup** - General setup
29. **skill** - Skill management
30. **skillify** - Convert to skills
31. **team** - Team orchestration (recommended)
32. **trace** - Tracing and debugging
33. **ultraqa** - Ultra quality assurance
34. **ultrawork** - Ultra work mode
35. **verify** - Verification
36. **visual-verdict** - Visual assessment
37. **wiki** - Wiki integration
38. **writer-memory** - Writer memory

### 1 MCP Server

**t** - Bridge MCP server for oh-my-claudecode
- Command: node
- Args: ["${CLAUDE_PLUGIN_ROOT}/oh-my-claudecode/bridge/mcp-server.cjs"]

## How to Use

### Setup

```bash
# Inside a Claude Code / OMC session
/setup
/omc-setup
```

### Key Commands

**Autopilot:**
```
/autopilot "build a REST API for managing tasks"
```

**Deep Interview (for requirements clarification):**
```
/deep-interview "I want to build a task management app"
```

**Team Mode (recommended):**
```
/team 3:executor "fix all TypeScript errors"
```

**Ask External Providers:**
```
/ask codex "review this patch"
```

**Natural Language Shortcut:**
```
autopilot: build a REST API for managing tasks
```

## Team Mode

Team is the canonical orchestration surface in OMC. It runs as a staged pipeline:

```
team-plan → team-prd → team-exec → team-verify → team-fix (loop)
```

Enable Claude Code native teams in `~/.claude/settings.json`:

```json
{
  "env": {
    "CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS": "1"
  }
}
```

## CLI Commands vs In-Session Skills

OMC exposes two different surfaces:

- **Terminal CLI commands:** Run `omc ...` from your shell after installing via npm
- **In-session skills:** Run `/...` inside a Claude Code session

## Documentation

- [Main Documentation](https://yeachan-heo.github.io/oh-my-claudecode-website)
- [CLI Reference](https://yeachan-heo.github.io/oh-my-claudecode-website/docs/#cli-reference)
- [Workflows](https://yeachan-heo.github.io/oh-my-claudecode-website/docs/#workflows)
- [Migration Guide](docs/MIGRATION.md)

## Community

- [Discord](https://discord.gg/PUwSMR9XNk)
- [GitHub Issues](https://github.com/Yeachan-Heo/oh-my-claudecode/issues)

## License

MIT License — See [LICENSE](LICENSE) for details.

## Support

For issues or questions, please open an issue on GitHub or join the Discord community.
