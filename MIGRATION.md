# Migration Guide

This guide helps you migrate from other tools to the Claude Skills Collection.

## Overview

The Claude Skills Collection provides a comprehensive set of skills for Claude Code. This guide helps you migrate from other AI coding assistants.

## Supported Migrations

- [Copilot Workspace](#from-copilot-workspace)
- [Cursor AI](#from-cursor-ai)
- [Continue.dev](#from-continuedev)
- [Codeium](#from-codeium)
- [Tabnine](#from-tabnine)
- [Amazon CodeWhisperer](#from-amazon-codewhisperer)
- [Google Code AI](#from-google-code-ai)

## From Copilot Workspace

### What You're Leaving Behind

- Proprietary, closed-source
- Limited skill set (~50 skills)
- No multi-agent orchestration
- Paid subscription required

### What You're Gaining

- Open source (MIT License)
- 193+ skills across 16 categories
- Multi-agent orchestration
- Free to use

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Copilot Workspace settings
claude import --from copilot-workspace
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Copilot Workspace | Claude Skills Collection |
|------------------|-------------------------|
| Code Completion | `/auto complete the code` |
| Code Explanation | `/auto explain this code` |
| Code Refactoring | `/auto refactor this code` |
| Bug Fixing | `/auto fix this bug` |
| Documentation | `/auto document this code` |

## From Cursor AI

### What You're Leaving Behind

- Proprietary, closed-source
- Limited skill set (~30 skills)
- Basic multi-agent support
- Paid subscription required

### What You're Gaining

- Open source (MIT License)
- 193+ skills across 16 categories
- Advanced multi-agent orchestration
- Free to use

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Cursor AI settings
claude import --from cursor-ai
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Cursor AI | Claude Skills Collection |
|-----------|-------------------------|
| Chat | `/auto chat about this` |
| Code Generation | `/auto generate code for` |
| Code Refactoring | `/auto refactor this code` |
| Debugging | `/auto debug this issue` |
| Testing | `/auto write tests for` |

## From Continue.dev

### What You're Leaving Behind

- Limited skill set (~20 skills)
- No multi-agent orchestration
- Basic documentation
- Open source but limited

### What You're Gaining

- 193+ skills across 16 categories
- Multi-agent orchestration
- Comprehensive documentation
- Active community

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Continue.dev settings
claude import --from continue-dev
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Continue.dev | Claude Skills Collection |
|--------------|-------------------------|
| Chat | `/auto chat about this` |
| Edit | `/auto edit this code` |
| Refactor | `/auto refactor this code` |
| Generate | `/auto generate code for` |
| Explain | `/auto explain this code` |

## From Codeium

### What You're Leaving Behind

- Limited skill set (~15 skills)
- No multi-agent orchestration
- Basic documentation
- Proprietary

### What You're Gaining

- 193+ skills across 16 categories
- Multi-agent orchestration
- Comprehensive documentation
- Open source

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Codeium settings
claude import --from codeium
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Codeium | Claude Skills Collection |
|---------|-------------------------|
| Autocomplete | `/auto complete the code` |
| Chat | `/auto chat about this` |
| Generate | `/auto generate code for` |
| Refactor | `/auto refactor this code` |
| Explain | `/auto explain this code` |

## From Tabnine

### What You're Leaving Behind

- Limited skill set (~10 skills)
- No multi-agent orchestration
- Basic documentation
- Proprietary

### What You're Gaining

- 193+ skills across 16 categories
- Multi-agent orchestration
- Comprehensive documentation
- Open source

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Tabnine settings
claude import --from tabnine
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Tabnine | Claude Skills Collection |
|---------|-------------------------|
| Autocomplete | `/auto complete the code` |
| Chat | `/auto chat about this` |
| Generate | `/auto generate code for` |
| Refactor | `/auto refactor this code` |
| Explain | `/auto explain this code` |

## From Amazon CodeWhisperer

### What You're Leaving Behind

- Limited skill set (~10 skills)
- No multi-agent orchestration
- Basic documentation
- Proprietary

### What You're Gaining

- 193+ skills across 16 categories
- Multi-agent orchestration
- Comprehensive documentation
- Open source

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Amazon CodeWhisperer settings
claude import --from codewhisperer
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Amazon CodeWhisperer | Claude Skills Collection |
|---------------------|-------------------------|
| Autocomplete | `/auto complete the code` |
| Chat | `/auto chat about this` |
| Generate | `/auto generate code for` |
| Refactor | `/auto refactor this code` |
| Explain | `/auto explain this code` |

## From Google Code AI

### What You're Leaving Behind

- Limited skill set (~10 skills)
- No multi-agent orchestration
- Basic documentation
- Proprietary

### What You're Gaining

- 193+ skills across 16 categories
- Multi-agent orchestration
- Comprehensive documentation
- Open source

### Migration Steps

1. **Install Claude Code**

```bash
# Install Claude Code
npm install -g @anthropic-ai/claude-code
```

2. **Install the Claude Skills Collection**

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git
cd claude-skills-collection

# Install dependencies
npm install
```

3. **Configure Claude Code**

```bash
# Configure Claude Code
claude configure
```

4. **Import Your Settings**

```bash
# Import your Google Code AI settings
claude import --from google-code-ai
```

5. **Start Using**

```bash
# Start using the collection
claude
```

### Feature Mapping

| Google Code AI | Claude Skills Collection |
|----------------|-------------------------|
| Autocomplete | `/auto complete the code` |
| Chat | `/auto chat about this` |
| Generate | `/auto generate code for` |
| Refactor | `/auto refactor this code` |
| Explain | `/auto explain this code` |

## Common Migration Tasks

### Migrating Your Workflows

1. **Identify Your Workflows**: List all your current workflows
2. **Map to Skills**: Map each workflow to a skill
3. **Test the Migration**: Test each migrated workflow
4. **Optimize**: Optimize the migrated workflows

### Migrating Your Settings

1. **Export Your Settings**: Export your current settings
2. **Import to Claude Code**: Import your settings to Claude Code
3. **Verify**: Verify that your settings are correct
4. **Adjust**: Adjust any settings that need to be changed

### Migrating Your Data

1. **Export Your Data**: Export your current data
2. **Import to Claude Code**: Import your data to Claude Code
3. **Verify**: Verify that your data is correct
4. **Adjust**: Adjust any data that needs to be changed

## Troubleshooting

### Installation Issues

**Problem**: Installation fails

**Solution**:
1. Check that you have the required dependencies
2. Verify your network connection
3. Try clearing your cache
4. Check the [Troubleshooting Guide](docs/QUICK_START.md#troubleshooting)

### Configuration Issues

**Problem**: Configuration fails

**Solution**:
1. Check your `settings.json` file
2. Verify that all required fields are present
3. Check for syntax errors
4. Try resetting your configuration

### Import Issues

**Problem**: Import fails

**Solution**:
1. Check that your export file is valid
2. Verify that the file format is correct
3. Check for missing fields
4. Try importing manually

### Performance Issues

**Problem**: Performance is slow

**Solution**:
1. Check your system resources
2. Reduce the number of active skills
3. Adjust the effort level
4. Check the [Performance Guide](PERFORMANCE.md)

## Getting Help

If you need help with migration:

- Check the [Documentation](docs/)
- Join our [Discord](https://discord.gg/)
- Start a [Discussion](https://github.com/gauravv-g/claude-skills-collection/discussions)
- Create an [Issue](https://github.com/gauravv-g/claude-skills-collection/issues/new)

## Conclusion

Migrating to the Claude Skills Collection is straightforward. With 193+ skills across 16 categories, multi-agent orchestration, and comprehensive documentation, you'll be up and running in no time.

---

**Ready to migrate? Check out our [Quick Start Guide](docs/QUICK_START.md)! 🚀**
