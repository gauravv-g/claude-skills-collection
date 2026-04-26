# Setup Global Skills for Claude Code

This script sets up a global skills directory for Claude Code and creates symbolic links in projects.

## Usage

```powershell
# Run this script to set up global skills
.\setup-global-skills.ps1

# Then in any project directory, run:
.\setup-project-skills.ps1
```

## What This Does

1. Creates a global skills directory at `~/.claude-skills`
2. Copies all skills from the collection to the global directory
3. Creates a setup script for linking projects to the global directory

## Benefits

- One central location for all skills
- Easy to update skills globally
- Minimal disk space usage
- Skills available in all projects
