# Quick Start Guide

Welcome to the Claude Skills Collection! This guide will help you get up and running in minutes.

## Prerequisites

Before you begin, ensure you have:

- [ ] Claude Code installed
- [ ] Git installed
- [ ] Basic command line knowledge
- [ ] Administrator/sudo access (for installation)

## Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/gauravv-g/claude-skills-collection.git ~/.claude/skills-collection
cd ~/.claude/skills-collection
```

### Step 2: Install Skills

```bash
# Copy all skills to your Claude Code installation
cp -r ~/.claude/skills-collection/skills/* ~/.claude/skills/

# Copy commands
cp -r ~/.claude/skills-collection/commands/* ~/.claude/commands/

# Copy memory files
cp -r ~/.claude/skills-collection/memory/* ~/.claude/memory/
```

### Step 3: Apply Settings (Optional)

```bash
# Apply recommended settings
cp ~/.claude/skills-collection/settings.json ~/.claude/settings.json
```

## Verification

Verify your installation by running:

```bash
# Check if skills are installed
ls ~/.claude/skills/

# Check if commands are installed
ls ~/.claude/commands/

# Check if memory files are installed
ls ~/.claude/memory/
```

## Your First Command

Try the `/auto` command with a simple task:

```bash
/auto create a hello world function
```

## Common Issues

### Issue: Skills not appearing

**Solution**: Make sure you've copied the files to the correct directory. Check your Claude Code installation path.

### Issue: Permission denied

**Solution**: Use `sudo` on Linux/macOS or run as Administrator on Windows.

### Issue: Command not found

**Solution**: Restart Claude Code to reload the commands.

## Next Steps

- [ ] Read the [Full Documentation](../README.md)
- [ ] Explore [Available Skills](../SKILLS.md)
- [ ] Check out [Examples](EXAMPLES.md)
- [ ] Join our [Community](https://discord.gg/)

## Need Help?

- 📧 [Email Support](mailto:support@example.com)
- 💬 [Discord Community](https://discord.gg/)
- 📝 [GitHub Issues](https://github.com/gauravv-g/claude-skills-collection/issues)

---

**Happy Coding! 🚀**
