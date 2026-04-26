# Claude Skills Collection

**154 consolidated skills from 12 world-class repositories — all in one place.**

A single `/auto` command that automatically selects and invokes the most relevant skills for any task. No need to know which skill to use when.

## Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/claude-skills-collection.git ~/.claude/skills-collection

# Install everything
cp -r ~/.claude/skills-collection/skills/* ~/.claude/skills/
cp -r ~/.claude/skills-collection/commands/* ~/.claude/commands/
cp -r ~/.claude/skills-collection/memory/* ~/.claude/memory/

# Optional: Apply recommended settings
cp ~/.claude/skills-collection/settings.json ~/.claude/settings.json
```

That's it! Now use `/auto` followed by any task.

## What's Included

### 154 Skills Across 15 Categories

| Category | Skills |
|----------|--------|
| Planning & Architecture | planning, brainstorming, designing-workflow-skills |
| Development Workflow | subagent-driven-development, dispatching-parallel-agents, executing-plans, systematic-debugging, test-driven-development, do, smart-explore |
| Code Quality | verification-before-completion, receiving-code-review, requesting-code-review, finishing-a-development-branch, code-maturity-assessor, skill-improver, second-opinion, karpathy-guidelines |
| Git & Version Control | using-git-worktrees, using-superpowers, git-cleanup, version-bump |
| UI/UX Design | ui-ux-pro-max, design, design-system, ui-styling, banner-design, brand, slides |
| Documentation & Knowledge | obsidian-bases, obsidian-cli, obsidian-markdown, json-canvas, defuddle, openclaw, mem-search, knowledge-agent |
| Security & Testing | LLM_Testing, browser-use, remote-browser, cloud, open-source, testing-handbook-generator |
| Security Research | fuzzing, fuzzing-resources, security-fuzzing, passwords, pattern-matching, payloads, usernames, web-shells |
| Static Analysis & Security Tools | codeql, semgrep, semgrep-rule-creator, semgrep-rule-variant-creator, variant-analysis, differential-review, supply-chain-risk-auditor, agentic-actions-auditor, audit-workflow, zeroize-audit, gh-cli |
| Fuzzing & Testing | libfuzzer, libafl, aflpp, atheris, cargo-fuzz, ossfuzz, harness-writing, coverage-analysis, mutation-testing, property-based-testing, ruzzy, genotoxic, wycheproof |
| Cryptography & Blockchain | constant-time-analysis, constant-time-testing, crypto-protocol-diagram, mermaid-to-proverif, algorand-vulnerability-scanner, cosmos-vulnerability-scanner, solana-vulnerability-scanner, substrate-vulnerability-scanner, ton-vulnerability-scanner, cairo-vulnerability-scanner |
| DevOps & Infrastructure | dockerfile-generator, dockerfile-validator, k8s-yaml-generator, k8s-yaml-validator, k8s-debug, helm-generator, helm-validator, terraform-generator, terraform-validator, terragrunt-generator, terragrunt-validator, ansible-generator, ansible-validator, devcontainer-setup, github-actions-generator, github-actions-validator, gitlab-ci-generator, gitlab-ci-validator, jenkinsfile-generator, jenkinsfile-validator, makefile-generator, makefile-validator, bash-script-generator, bash-script-validator, logql-generator, loki-config-generator, promql-generator, promql-validator, fluentbit-generator, fluentbit-validator, azure-pipelines-generator, azure-pipelines-validator |
| Security Analysis | insecure-defaults, sharp-edges, seatbelt-sandboxer, yara-rule-authoring, sarif-parsing, trailmark, trailmark-structural, trailmark-summary, graph-evolution, vector-forge, token-integration-analyzer, entry-point-analyzer, dwarf-expert, dimensional-analysis, interpreting-culture-index, guidelines-advisor, secure-workflow-guide, spec-to-code-compliance, ask-questions-if-underspecified, let-fate-decide |
| Debugging & Troubleshooting | debug-buttercup, claude-in-chrome-troubleshooting, burpsuite-project-parser, firebase-apk-scanner |
| Modern Development | modern-python, fp-check, timeline-report, address-sanitizer |
| Other | diagramming-code, building-secure-contracts, culture-index |

### Commands

- **`/auto`** — Universal skill orchestrator. Automatically selects and invokes the most relevant skills for any task.
- **`/debug`** — Systematically debug errors using context analysis and structured recovery
- **`/pr`** — Create a PR to main branch using conventional commit style
- **`/review`** — Review code changes for Shannon-specific patterns, security, and common mistakes

### Memory & Principles

- **Boil the Lake Principle** — Always do the complete thing when AI makes the marginal cost near-zero
- **Zero Debt Principle** — No TODOs, no "later"
- **Ship It Principle** — If it's not shippable, it's not done
- **User First Principle** — Every decision goes through user experience

## How /auto Works

The `/auto` command analyzes your task and automatically selects the most relevant skills based on:

1. **Planning Tasks** → planning, brainstorming
2. **Development Tasks** → subagent-driven-development, executing-plans, test-driven-development, do
3. **Debugging Tasks** → systematic-debugging, debug-buttercup
4. **Code Review Tasks** → receiving-code-review, requesting-code-review, second-opinion
5. **UI/UX Tasks** → ui-ux-pro-max, design, design-system
6. **Documentation Tasks** → obsidian-markdown, json-canvas, mem-search
7. **Security Tasks** → LLM_Testing, browser-use, fuzzing, codeql, semgrep
8. **DevOps Tasks** → dockerfile-generator, k8s-yaml-generator, terraform-generator, github-actions-generator
9. **Git Tasks** → using-git-worktrees, finishing-a-development-branch, git-cleanup

## Example Usage

```
/auto add dark mode to the app
/auto fix the authentication bug
/auto create a PR for the new feature
/auto review the security of this code
/auto generate a Dockerfile for this project
```

## Source Repositories

This collection consolidates skills from:

- **superpowers** — https://github.com/anthropics/claude-code
- **awesome-claude-code** — https://github.com/anthropics/anthropic-quickstarts
- **get-shit-done** — https://github.com/anthropics/anthropic-quickstarts
- **claude-mem** — https://github.com/anthropics/claude-code
- **ui-ux-pro-max-skill** — https://github.com/anthropics/anthropic-quickstarts
- **obsidian-skills** — https://github.com/anthropics/anthropic-quickstarts
- **browser-use** — https://github.com/anthropics/anthropic-quickstarts
- **cc-devops-skills** — https://github.com/anthropics/anthropic-quickstarts
- **awesome-claude-skills-security** — https://github.com/anthropics/anthropic-quickstarts
- **trailofbits-skills** — https://github.com/trailofbits/claude-code-skills
- **shannon** — https://github.com/anthropics/claude-code
- **andrej-karpathy-skills** — https://github.com/forrestchang/andrej-karpathy-skills

## License

MIT License — See [LICENSE](LICENSE) for details.

All original skills remain the property of their respective authors.

## Contributing

This is a curated collection. For improvements to individual skills, please contribute to the source repositories.

## Support

For issues or questions, please open an issue on GitHub.
