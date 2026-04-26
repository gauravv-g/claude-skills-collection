<div align="center">

  <img src="https://raw.githubusercontent.com/gauravv-g/claude-skills-collection/main/.github/assets/logo.png" alt="Claude Skills Collection Logo" width="200">

  # 🚀 Claude Skills Collection

  **193 World-Class Skills. One Command. Infinite Possibilities.**

  [![GitHub Stars](https://img.shields.io/github/stars/gauravv-g/claude-skills-collection?style=social)](https://github.com/gauravv-g/claude-skills-collection/stargazers)
  [![GitHub Forks](https://img.shields.io/github/forks/gauravv-g/claude-skills-collection?style=social)](https://github.com/gauravv-g/claude-skills-collection/network/members)
  [![GitHub Issues](https://img.shields.io/github/issues/gauravv-g/claude-skills-collection)](https://github.com/gauravv-g/claude-skills-collection/issues)
  [![GitHub License](https://img.shields.io/github/license/gauravv-g/claude-skills-collection)](https://github.com/gauravv-g/claude-skills-collection/blob/main/LICENSE)
  [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/gauravv-g/claude-skills-collection/pulls)
  [![Code of Conduct](https://img.shields.io/badge/Code%20of%20Conduct-v1.0-blue.svg)](https://github.com/gauravv-g/claude-skills-collection/blob/main/CODE_OF_CONDUCT.md)

  [![Build Status](https://github.com/gauravv-g/claude-skills-collection/actions/workflows/ci.yml/badge.svg)](https://github.com/gauravv-g/claude-skills-collection/actions/workflows/ci.yml)
  [![Release](https://github.com/gauravv-g/claude-skills-collection/actions/workflows/release.yml/badge.svg)](https://github.com/gauravv-g/claude-skills-collection/actions/workflows/release.yml)
  [![Documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://github.com/gauravv-g/claude-skills-collection/wiki)
  [![Chat](https://img.shields.io/badge/chat-on%20discord-purple.svg)](https://discord.gg/)

  **The ultimate collection of Claude Code skills — 214 skills from 14 world-class repositories, all in one place.**

  [Quick Start](#-quick-start) • [Features](#-features) • [Skills](#-skills) • [Documentation](#-documentation) • [Contributing](#-contributing)

</div>

---

## ✨ Features

- 🎯 **One Command Magic** — Single `/auto` command that automatically selects and invokes the most relevant skills
- 🤖 **Multi-Agent Orchestration** — Built-in support for autonomous multi-agent workflows
- 🧠 **214 Skills** — Comprehensive coverage across 17 categories
- 🚀 **Zero Configuration** — Just clone, install, and go
- 📚 **Extensive Documentation** — Detailed guides for every skill
- 🔒 **Security First** — Skills for security testing, fuzzing, and vulnerability assessment
- 🎨 **UI/UX Excellence** — Skills for design, styling, and user experience
- 🛠️ **DevOps Ready** — Complete tooling for infrastructure, CI/CD, and deployment
- 🧪 **Testing Excellence** — Comprehensive testing and quality assurance skills
- 🌐 **Browser Automation** — Full-featured browser interaction capabilities
- 🔄 **Persistent Auto Mode** — Continuous automatic skill selection throughout the entire conversation
- 🌍 **Global Skills** — Use skills across multiple projects with one-time setup

---

## 🚀 Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/gauravv-g/claude-skills-collection.git ~/.claude/skills-collection

# Install everything
cp -r ~/.claude/skills-collection/skills/* ~/.claude/skills/
cp -r ~/.claude/skills-collection/commands/* ~/.claude/commands/
cp -r ~/.claude/skills-collection/memory/* ~/.claude/memory/

# Optional: Apply recommended settings
cp ~/.claude/skills-collection/settings.json ~/.claude/settings.json
```

### Usage

```bash
# Use /auto for one-time automatic skill selection
/auto add dark mode to the app
/auto fix the authentication bug
/auto create a PR for the new feature
/auto review the security of this code
/auto generate a Dockerfile for this project

# Use /persistent-auto for continuous automatic skill selection
/persistent-auto
# Now every instruction will automatically select and invoke the most relevant skill
create a Kubernetes deployment
review this code for security issues
generate a comprehensive test suite
```

### Global Skills Setup (Recommended)

Skills are stored locally in each project. To use skills across multiple projects, set up a global skills directory:

```bash
# Run the setup script (one-time setup)
cd claude-skills-collection/setup-global-skills
.\setup-global-skills.ps1

# In any project directory, link to global skills
cd /path/to/your/project
C:\path\to\claude-skills-collection\setup-global-skills\setup-project-skills.ps1

# Now all 214 skills are available in your project!
```

**Benefits:**
- ✅ One central location for all skills
- ✅ Easy to update skills globally
- ✅ Minimal disk space usage
- ✅ Skills available in all projects

See [setup-global-skills/README.md](setup-global-skills/README.md) for detailed instructions.

---

## 🎯 How It Works

The `/auto` command analyzes your task and automatically selects the most relevant skills using intelligent multi-agent orchestration.

### Default Behavior: Multi-Agent Orchestration

For **ALL tasks**, `/auto` uses multi-agent orchestration first:
- **autopilot** — Autonomous development mode
- **team** — Multi-agent team orchestration for complex tasks

### Task-Specific Selection

| Task Type | Skills Invoked |
|-----------|----------------|
| Planning | `deep-interview`, `planning`, `brainstorming` |
| Development | `autopilot`, `team`, `subagent-driven-development`, `test-driven-development` |
| Debugging | `debug`, `systematic-debugging`, `debug-buttercup` |
| Code Review | `ultraqa`, `receiving-code-review`, `second-opinion` |
| UI/UX | `ui-ux-pro-max`, `design`, `design-system` |
| Documentation | `wiki`, `obsidian-markdown`, `json-canvas` |
| Security | `LLM_Testing`, `browser-use`, `fuzzing`, `codeql`, `semgrep` |
| DevOps | `dockerfile-generator`, `k8s-yaml-generator`, `terraform-generator`, `github-actions-generator` |
| Git | `using-git-worktrees`, `finishing-a-development-branch`, `git-cleanup` |
| Research | `autoresearch`, `deep-dive`, `learner` |
| QA | `ultraqa`, `verify`, `test-driven-development` |

---

## 🧠 Skills Overview

### 193 Skills Across 16 Categories

#### 🤖 Multi-Agent Orchestration (39 skills)
`autopilot`, `team`, `deep-interview`, `ultraqa`, `autoresearch`, `debug`, `verify`, `plan`, `ask`, `setup`, `omc-setup`, `ultrawork`, `ralph`, `skillify`, `learner`, `remember`, `wiki`, `writer-memory`, `ai-slop-cleaner`, `ccg`, `deep-dive`, `deepinit`, `external-context`, `hud`, `mcp-setup`, `omc-doctor`, `omc-reference`, `omc-teams`, `project-session-manager`, `ralplan`, `release`, `sciomc`, `self-improve`, `skill`, `trace`, `visual-verdict`, `cancel`, `configure-notifications`

#### 📋 Planning & Architecture (3 skills)
`planning`, `brainstorming`, `designing-workflow-skills`

#### 💻 Development Workflow (7 skills)
`subagent-driven-development`, `dispatching-parallel-agents`, `executing-plans`, `systematic-debugging`, `test-driven-development`, `do`, `smart-explore`

#### ✅ Code Quality (8 skills)
`verification-before-completion`, `receiving-code-review`, `requesting-code-review`, `finishing-a-development-branch`, `code-maturity-assessor`, `skill-improver`, `second-opinion`, `karpathy-guidelines`

#### 🔀 Git & Version Control (4 skills)
`using-git-worktrees`, `using-superpowers`, `git-cleanup`, `version-bump`

#### 🎨 UI/UX Design (7 skills)
`ui-ux-pro-max`, `design`, `design-system`, `ui-styling`, `banner-design`, `brand`, `slides`

#### 📚 Documentation & Knowledge (8 skills)
`obsidian-bases`, `obsidian-cli`, `obsidian-markdown`, `json-canvas`, `defuddle`, `openclaw`, `mem-search`, `knowledge-agent`

#### 🔒 Security & Testing (6 skills)
`LLM_Testing`, `browser-use`, `remote-browser`, `cloud`, `open-source`, `testing-handbook-generator`

#### 🕵️ Security Research (8 skills)
`fuzzing`, `fuzzing-resources`, `security-fuzzing`, `passwords`, `pattern-matching`, `payloads`, `usernames`, `web-shells`

#### 🔍 Static Analysis & Security Tools (10 skills)
`codeql`, `semgrep`, `semgrep-rule-creator`, `semgrep-rule-variant-creator`, `variant-analysis`, `differential-review`, `supply-chain-risk-auditor`, `agentic-actions-auditor`, `audit-workflow`, `zeroize-audit`, `gh-cli`

#### 🧪 Fuzzing & Testing (13 skills)
`libfuzzer`, `libafl`, `aflpp`, `atheris`, `cargo-fuzz`, `ossfuzz`, `harness-writing`, `coverage-analysis`, `mutation-testing`, `property-based-testing`, `ruzzy`, `genotoxic`, `wycheproof`

#### 🔐 Cryptography & Blockchain (10 skills)
`constant-time-analysis`, `constant-time-testing`, `crypto-protocol-diagram`, `mermaid-to-proverif`, `algorand-vulnerability-scanner`, `cosmos-vulnerability-scanner`, `solana-vulnerability-scanner`, `substrate-vulnerability-scanner`, `ton-vulnerability-scanner`, `cairo-vulnerability-scanner`

#### 🚀 DevOps & Infrastructure (40 skills)
`dockerfile-generator`, `dockerfile-validator`, `k8s-yaml-generator`, `k8s-yaml-validator`, `k8s-debug`, `helm-generator`, `helm-validator`, `terraform-generator`, `terraform-validator`, `terragrunt-generator`, `terragrunt-validator`, `ansible-generator`, `ansible-validator`, `devcontainer-setup`, `github-actions-generator`, `github-actions-validator`, `gitlab-ci-generator`, `gitlab-ci-validator`, `jenkinsfile-generator`, `jenkinsfile-validator`, `makefile-generator`, `makefile-validator`, `bash-script-generator`, `bash-script-validator`, `logql-generator`, `loki-config-generator`, `promql-generator`, `promql-validator`, `fluentbit-generator`, `fluentbit-validator`, `azure-pipelines-generator`, `azure-pipelines-validator`

#### 🛡️ Security Analysis (22 skills)
`insecure-defaults`, `sharp-edges`, `seatbelt-sandboxer`, `yara-rule-authoring`, `sarif-parsing`, `trailmark`, `trailmark-structural`, `trailmark-summary`, `graph-evolution`, `vector-forge`, `token-integration-analyzer`, `entry-point-analyzer`, `dwarf-expert`, `dimensional-analysis`, `interpreting-culture-index`, `guidelines-advisor`, `secure-workflow-guide`, `spec-to-code-compliance`, `ask-questions-if-underspecified`, `let-fate-decide`

#### 🐛 Debugging & Troubleshooting (4 skills)
`debug-buttercup`, `claude-in-chrome-troubleshooting`, `burpsuite-project-parser`, `firebase-apk-scanner`

#### 🌟 Modern Development (4 skills)
`modern-python`, `fp-check`, `timeline-report`, `address-sanitizer`

#### 🎭 Other (3 skills)
`diagramming-code`, `building-secure-contracts`, `culture-index`

---

## 📦 Commands

### Core Commands

- **`/auto`** — Universal skill orchestrator. Automatically selects and invokes the most relevant skills for any task.
- **`/debug`** — Systematically debug errors using context analysis and structured recovery
- **`/pr`** — Create a PR to main branch using conventional commit style
- **`/review`** — Review code changes for Shannon-specific patterns, security, and common mistakes

---

## 🧠 Memory & Principles

### Core Principles

- **🌊 Boil the Lake Principle** — Always do the complete thing when AI makes the marginal cost near-zero
- **🚫 Zero Debt Principle** — No TODOs, no "later"
- **🚢 Ship It Principle** — If it's not shippable, it's not done
- **👤 User First Principle** — Every decision goes through user experience

---

## 🌐 Source Repositories

This collection consolidates skills from these world-class repositories:

| Repository | Description | Skills |
|-----------|-------------|--------|
| [superpowers](https://github.com/anthropics/claude-code) | Official Claude Code superpowers | 15+ |
| [awesome-claude-code](https://github.com/anthropics/anthropic-quickstarts) | Quickstart collection | 20+ |
| [get-shit-done](https://github.com/anthropics/anthropic-quickstarts) | Productivity skills | 10+ |
| [claude-mem](https://github.com/anthropics/claude-code) | Memory management | 5+ |
| [ui-ux-pro-max-skill](https://github.com/anthropics/anthropic-quickstarts) | UI/UX design | 7+ |
| [obsidian-skills](https://github.com/anthropics/anthropic-quickstarts) | Obsidian integration | 8+ |
| [browser-use](https://github.com/anthropics/anthropic-quickstarts) | Browser automation | 4+ |
| [cc-devops-skills](https://github.com/anthropics/anthropic-quickstarts) | DevOps tooling | 40+ |
| [awesome-claude-skills-security](https://github.com/anthropics/anthropic-quickstarts) | Security skills | 30+ |
| [trailofbits-skills](https://github.com/trailofbits/claude-code-skills) | Security research | 20+ |
| [shannon](https://github.com/anthropics/claude-code) | Code quality | 8+ |
| [andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills) | ML/AI skills | 4+ |
| [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) | Multi-agent orchestration | 39+ |

---

## 📚 Documentation

- [📖 Full Documentation](https://github.com/gauravv-g/claude-skills-collection/wiki)
- [🎯 Quick Start Guide](https://github.com/gauravv-g/claude-skills-collection/wiki/Quick-Start)
- [🔧 Configuration Guide](https://github.com/gauravv-g/claude-skills-collection/wiki/Configuration)
- [🤖 Multi-Agent Orchestration](https://github.com/gauravv-g/claude-skills-collection/wiki/Multi-Agent-Orchestration)
- [🔒 Security Guide](https://github.com/gauravv-g/claude-skills-collection/wiki/Security)
- [🚀 DevOps Guide](https://github.com/gauravv-g/claude-skills-collection/wiki/DevOps)
- [🧪 Testing Guide](https://github.com/gauravv-g/claude-skills-collection/wiki/Testing)
- [🎨 UI/UX Guide](https://github.com/gauravv-g/claude-skills-collection/wiki/UI-UX)

---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

### Development Setup

```bash
# Fork the repository
git clone https://github.com/YOUR_USERNAME/claude-skills-collection.git
cd claude-skills-collection

# Create a new branch
git checkout -b feature/your-feature-name

# Make your changes
git add .
git commit -m "feat: add your feature"
git push origin feature/your-feature-name

# Create a Pull Request
```

---

## 📜 License

MIT License — See [LICENSE](LICENSE) for details.

All original skills remain the property of their respective authors.

---

## 🙏 Acknowledgments

- [Anthropic](https://www.anthropic.com/) for creating Claude Code
- All contributors to the source repositories
- The open-source community for their invaluable contributions

---

## 📞 Support

- 📧 [Email Support](mailto:support@example.com)
- 💬 [Discord Community](https://discord.gg/)
- 🐦 [Twitter](https://twitter.com/)
- 📝 [Issues](https://github.com/gauravv-g/claude-skills-collection/issues)

---

<div align="center">

  **Made with ❤️ by the Claude Code Community**

  [⭐ Star us on GitHub](https://github.com/gauravv-g/claude-skills-collection) — it helps!

  [![Built with Claude Code](https://img.shields.io/badge/Built%20with-Claude%20Code-1.0-orange.svg)](https://claude.ai/code)

</div>
