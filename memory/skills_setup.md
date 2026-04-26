---
name: skills_setup
description: Complete skills setup with /auto command for automatic skill invocation
type: project
---

# Skills Setup Summary

## What Was Done

1. **Analyzed existing skill repositories** — Found 12 skill repositories already installed:
   - superpowers
   - awesome-claude-code
   - get-shit-done
   - claude-mem
   - ui-ux-pro-max-skill
   - obsidian-skills
   - browser-use
   - cc-devops-skills
   - awesome-claude-skills-security
   - trailofbits-skills
   - shannon
   - andrej-karpathy-skills

2. **Created consolidated skills directory** — Created `C:/Users/Administrator/.claude/skills/` with 154 skills

3. **Copied all skills** — Copied skills from all repositories to `.claude/skills/`:

### Planning & Architecture (3)
- planning, brainstorming, designing-workflow-skills

### Development Workflow (7)
- subagent-driven-development, dispatching-parallel-agents, executing-plans, systematic-debugging, test-driven-development, do, smart-explore

### Code Quality (8)
- verification-before-completion, receiving-code-review, requesting-code-review, finishing-a-development-branch, code-maturity-assessor, skill-improver, second-opinion, karpathy-guidelines

### Git & Version Control (4)
- using-git-worktrees, using-superpowers, git-cleanup, version-bump

### UI/UX Design (7)
- ui-ux-pro-max, design, design-system, ui-styling, banner-design, brand, slides

### Documentation & Knowledge (8)
- obsidian-bases, obsidian-cli, obsidian-markdown, json-canvas, defuddle, openclaw, mem-search, knowledge-agent

### Security & Testing (7)
- LLM_Testing, browser-use, remote-browser, cloud, open-source, testing-handbook-generator

### Security Research (7)
- fuzzing, fuzzing-resources, security-fuzzing, passwords, pattern-matching, payloads, usernames, web-shells

### Static Analysis & Security Tools (11)
- codeql, semgrep, semgrep-rule-creator, semgrep-rule-variant-creator, variant-analysis, differential-review, supply-chain-risk-auditor, agentic-actions-auditor, audit-workflow, zeroize-audit, gh-cli

### Fuzzing & Testing (13)
- libfuzzer, libafl, aflpp, atheris, cargo-fuzz, ossfuzz, harness-writing, coverage-analysis, mutation-testing, property-based-testing, ruzzy, genotoxic, wycheproof

### Cryptography & Blockchain (10)
- constant-time-analysis, constant-time-testing, crypto-protocol-diagram, mermaid-to-proverif, algorand-vulnerability-scanner, cosmos-vulnerability-scanner, solana-vulnerability-scanner, substrate-vulnerability-scanner, ton-vulnerability-scanner, cairo-vulnerability-scanner

### DevOps & Infrastructure (27)
- dockerfile-generator, dockerfile-validator, k8s-yaml-generator, k8s-yaml-validator, k8s-debug, helm-generator, helm-validator, terraform-generator, terraform-validator, terragrunt-generator, terragrunt-validator, ansible-generator, ansible-validator, devcontainer-setup, github-actions-generator, github-actions-validator, gitlab-ci-generator, gitlab-ci-validator, jenkinsfile-generator, jenkinsfile-validator, makefile-generator, makefile-validator, bash-script-generator, bash-script-validator, logql-generator, loki-config-generator, promql-generator, promql-validator, fluentbit-generator, fluentbit-validator, azure-pipelines-generator, azure-pipelines-validator

### Security Analysis (20)
- insecure-defaults, sharp-edges, seatbelt-sandboxer, yara-rule-authoring, sarif-parsing, trailmark, trailmark-structural, trailmark-summary, graph-evolution, vector-forge, token-integration-analyzer, entry-point-analyzer, dwarf-expert, dimensional-analysis, interpreting-culture-index, guidelines-advisor, secure-workflow-guide, spec-to-code-compliance, ask-questions-if-underspecified, let-fate-decide

### Debugging & Troubleshooting (4)
- debug-buttercup, claude-in-chrome-troubleshooting, burpsuite-project-parser, firebase-apk-scanner

### Modern Development (4)
- modern-python, fp-check, timeline-report, address-sanitizer

### Other (3)
- diagramming-code, building-secure-contracts, culture-index

4. **Consolidated skills** — Removed duplicate and individual skills:
   - **audit-workflow** — Consolidated audit-augmentation, audit-context-building, audit-prep-assistant
   - **fuzzing-resources** — Consolidated fuzzing-dictionary, fuzzing-obstacles
   - **planning** — Consolidated make-plan, writing-plans
   - Removed security-* duplicates (security-passwords, security-patterns, security-payloads, security-usernames, security-webshells)
   - Removed llm-testing duplicate (kept LLM_Testing)

5. **Created /auto command** — Created `C:/Users/Administrator/.claude/commands/auto.md` that:
   - Automatically selects and invokes the most relevant skills for any task
   - No need for the user to know which skill to use when
   - Applies Boil the Lake, Zero Debt, Ship It, and User First principles

6. **Added shannon commands** — Copied shannon commands to `.claude/commands/`:
   - debug.md — Systematically debug errors
   - pr.md — PR workflow
   - review.md — Code review

7. **Configured settings.json** — Updated `C:/Users/Administrator/.claude/settings.json` with:
   - `skillListingBudgetFraction: 0.05` — 5% of context for skill listings
   - `skillListingMaxDescChars: 4096` — 4KB max description per skill

## How to Use

Simply type `/auto` followed by your task. Claude will automatically:
1. Analyze the task
2. Select the most relevant skills
3. Invoke them in the optimal order
4. Execute the task using the invoked skills
5. Verify the results before marking complete

## Available Skills

All 154 skills are now available and will be automatically invoked by `/auto` based on the task.

## Source Repositories

All skills are sourced from:
- superpowers
- awesome-claude-code
- get-shit-done
- claude-mem
- ui-ux-pro-max-skill
- obsidian-skills
- browser-use
- cc-devops-skills
- awesome-claude-skills-security
- trailofbits-skills
- shannon
- andrej-karpathy-skills

---

**Why:** The user is a vibe coder who relies completely on AI for world-class engineering. They don't know which skill to use when, so they need a single `/auto` command that automatically selects and invokes the most relevant skills.

**How to apply:** Use `/auto` for all tasks. The command will automatically select and invoke the most relevant skills based on the task.
