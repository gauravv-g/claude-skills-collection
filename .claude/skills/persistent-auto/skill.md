---
name: persistent-auto
description: Enable persistent auto mode that automatically selects and invokes the most relevant skills for every instruction throughout the entire conversation
argument-hint: "<optional: 'enable' | 'disable' | 'status'>"
allowed-tools: Read, Write, Bash(*), Glob, Grep, Edit, ToolSearch
---

> **Input Safety:** Before using $ARGUMENTS in file paths or shell commands, strip or escape shell metacharacters: ` ; | & $ ( ) { } < > \` ' " \\ \n`. Use the literal text content only.

# Persistent Auto Mode

You are now in **Persistent Auto Mode**. This mode will remain active for the entire conversation session.

## What This Means

For EVERY instruction the user gives you, you must:

1. **Analyze the instruction** to understand what needs to be done
2. **Select the most relevant skill** from the available skills
3. **Invoke that skill** automatically
4. **Execute the task** using the invoked skill
5. **Report the results** to the user

## Available Skills (213 total)

### Multi-Agent Orchestration (40 skills)
- `autopilot` - Autonomous development mode
- `team` - Multi-agent team orchestration
- `deep-interview` - Requirements clarification
- `planning` - Implementation planning
- `debug` - Debugging assistance
- `verify` - Verification
- `ultraqa` - Quality assurance
- `autoresearch` - Automated research
- `skillify` - Convert to skills
- `learner` - Learning and adaptation
- `remember` - Memory and recall
- `wiki` - Wiki integration
- `ai-slop-cleaner` - Clean up AI-generated code
- `ccg` - Code generation
- `deep-dive` - Deep dive analysis
- `deepinit` - Deep initialization
- `external-context` - External context management
- `hud` - Heads-up display
- `mcp-setup` - MCP server setup
- `omc-doctor` - Diagnostic and troubleshooting
- `omc-reference` - Reference documentation
- `omc-teams` - Team orchestration setup
- `project-session-manager` - Project session management
- `ralplan` - Ralph planning
- `release` - Release management
- `sciomc` - Scientific OMC capabilities
- `self-improve` - Self-improvement
- `skill` - Skill management
- `trace` - Tracing and debugging
- `visual-verdict` - Visual assessment
- `cancel` - Cancel running operations
- `configure-notifications` - Configure notifications
- `ask` - Query external providers
- `setup` - OMC setup wizard
- `omc-setup` - OMC setup
- `ultrawork` - Ultra work mode
- `ralph` - Ralph loop management
- `writer-memory` - Writer memory

### Planning & Architecture (3 skills)
- `planning` - Create structured implementation plans
- `brainstorming` - Generate ideas and explore options
- `designing-workflow-skills` - Design workflow skills

### Development Workflow (7 skills)
- `subagent-driven-development` - Use subagents for complex tasks
- `dispatching-parallel-agents` - Run multiple agents in parallel
- `executing-plans` - Execute phased implementation plans
- `systematic-debugging` - Debug errors systematically
- `test-driven-development` - Write tests before code
- `do` - Execute phased implementation plans
- `smart-explore` - Smart exploration of codebase

### Code Quality (8 skills)
- `verification-before-completion` - Verify work before completion
- `receiving-code-review` - Receive and process code reviews
- `requesting-code-review` - Request code reviews
- `finishing-a-development-branch` - Complete and merge branches
- `code-maturity-assessor` - Assess code maturity
- `skill-improver` - Improve skills
- `second-opinion` - Get second opinion on code
- `karpathy-guidelines` - Behavioral guidelines

### Git & Version Control (4 skills)
- `using-git-worktrees` - Use git worktrees for parallel development
- `using-superpowers` - Use superpowers for engineering tasks
- `git-cleanup` - Clean up git history
- `version-bump` - Automated semantic versioning

### UI/UX Design (20 skills)
- `ui-ux-pro-max` - UI/UX design intelligence
- `design` - Comprehensive design
- `design-system` - Create design systems
- `ui-styling` - Style UI components
- `banner-design` - Design banners
- `brand` - Brand design
- `slides` - Create presentations
- `artifacts-builder` - Create HTML artifacts
- `brand-audit` - Check brand guidelines
- `canvas-design` - Create visual designs
- `component` - Create React components
- `d3-viz` - Generate D3 visualizations
- `design-system` - Manage design tokens
- `diagram` - Generate diagrams
- `figma-to-code` - Figma to code
- `image-enhance` - Enhance images
- `imagen` - Generate images
- `screenshot` - Generate screenshots
- `visual` - Generate visual assets

### Documentation & Knowledge (8 skills)
- `obsidian-bases` - Work with Obsidian bases
- `obsidian-cli` - Use Obsidian CLI
- `obsidian-markdown` - Work with Obsidian markdown
- `json-canvas` - Work with JSON canvas
- `defuddle` - Extract markdown content
- `openclaw` - Knowledge management
- `mem-search` - Search memory
- `knowledge-agent` - Build knowledge bases

### Security & Testing (6 skills)
- `LLM_Testing` - Test LLM applications
- `browser-use` - Automate browser interactions
- `remote-browser` - Control local browser remotely
- `cloud` - Cloud infrastructure documentation
- `open-source` - Open source best practices
- `testing-handbook-generator` - Generate testing handbooks

### Security Research (8 skills)
- `fuzzing` - Fuzzing and security testing
- `fuzzing-resources` - Fuzzing resources
- `security-fuzzing` - Security fuzzing
- `passwords` - Password security
- `pattern-matching` - Security pattern detection
- `payloads` - Security payloads
- `usernames` - Username enumeration
- `web-shells` - Web shell detection

### Static Analysis & Security Tools (12 skills)
- `codeql` - CodeQL static analysis
- `semgrep` - Semgrep static analysis
- `semgrep-rule-creator` - Create Semgrep rules
- `semgrep-rule-variant-creator` - Create Semgrep rule variants
- `variant-analysis` - Find similar vulnerabilities
- `differential-review` - Security-focused differential review
- `supply-chain-risk-auditor` - Audit supply chain risks
- `agentic-actions-auditor` - Audit GitHub Actions
- `audit-workflow` - Audit workflows
- `zeroize-audit` - Detect missing zeroization
- `gh-cli` - Enforce authenticated gh CLI
- `insecure-defaults` - Detect insecure defaults

### Fuzzing & Testing (13 skills)
- `libfuzzer` - LibFuzzer fuzzing
- `libafl` - AFL++ fuzzing
- `aflpp` - AFL++ fuzzing
- `atheris` - Python fuzzing
- `cargo-fuzz` - Rust fuzzing
- `ossfuzz` - OSS-Fuzz
- `harness-writing` - Write fuzzing harnesses
- `coverage-analysis` - Measure code coverage
- `mutation-testing` - Configure mutation testing
- `property-based-testing` - Property-based testing
- `ruzzy` - Ruby fuzzing
- `genotoxic` - Graph-informed mutation testing
- `wycheproof` - Test cryptographic implementations

### Cryptography & Blockchain (9 skills)
- `constant-time-analysis` - Detect timing side-channels
- `constant-time-testing` - Constant-time testing
- `crypto-protocol-diagram` - Extract protocol diagrams
- `mermaid-to-proverif` - Translate Mermaid to ProVerif
- `algorand-vulnerability-scanner` - Scan Algorand contracts
- `cosmos-vulnerability-scanner` - Scan Cosmos contracts
- `solana-vulnerability-scanner` - Scan Solana programs
- `substrate-vulnerability-scanner` - Scan Substrate pallets
- `cairo-vulnerability-scanner` - Scan Cairo contracts

### DevOps & Infrastructure (47 skills)
- `dockerfile-generator` - Generate Dockerfiles
- `dockerfile-validator` - Validate Dockerfiles
- `k8s-yaml-generator` - Generate Kubernetes YAML
- `k8s-yaml-validator` - Validate Kubernetes YAML
- `k8s-debug` - Debug Kubernetes
- `helm-generator` - Generate Helm charts
- `helm-validator` - Validate Helm charts
- `terraform-generator` - Generate Terraform
- `terraform-validator` - Validate Terraform
- `terragrunt-generator` - Generate Terragrunt
- `terragrunt-validator` - Validate Terragrunt
- `ansible-generator` - Generate Ansible
- `ansible-validator` - Validate Ansible
- `devcontainer-setup` - Setup dev containers
- `github-actions-generator` - Generate GitHub Actions
- `github-actions-validator` - Validate GitHub Actions
- `gitlab-ci-generator` - Generate GitLab CI
- `gitlab-ci-validator` - Validate GitLab CI
- `jenkinsfile-generator` - Generate Jenkinsfiles
- `jenkinsfile-validator` - Validate Jenkinsfiles
- `makefile-generator` - Generate Makefiles
- `makefile-validator` - Validate Makefiles
- `bash-script-generator` - Generate bash scripts
- `bash-script-validator` - Validate bash scripts
- `logql-generator` - Generate LogQL queries
- `loki-config-generator` - Generate Loki config
- `promql-generator` - Generate PromQL queries
- `promql-validator` - Validate PromQL
- `fluentbit-generator` - Generate Fluent Bit config
- `fluentbit-validator` - Validate Fluent Bit
- `azure-pipelines-generator` - Generate Azure Pipelines
- `azure-pipelines-validator` - Validate Azure Pipelines
- `github-repo` - Repository management
- `github-issues` - Issue management
- `github-pr` - Pull request management
- `github-actions` - CI/CD workflow management
- `github-security` - Security management
- `github-release` - Release management
- `github-projects` - Project management

### Security Analysis (20 skills)
- `sharp-edges` - Identify dangerous APIs
- `seatbelt-sandboxer` - Generate macOS sandbox configs
- `yara-rule-authoring` - Author YARA rules
- `sarif-parsing` - Parse SARIF files
- `trailmark` - Build source code graphs
- `trailmark-structural` - Run trailmark analysis
- `trailmark-summary` - Run trailmark summary
- `graph-evolution` - Compare code graphs
- `vector-forge` - Mutation-driven test generation
- `token-integration-analyzer` - Analyze token integration
- `entry-point-analyzer` - Analyze smart contracts
- `dwarf-expert` - Analyze DWARF debug files
- `dimensional-analysis` - Annotate code with dimensional analysis
- `interpreting-culture-index` - Interpret Culture Index surveys
- `guidelines-advisor` - Smart contract development advisor
- `secure-workflow-guide` - Secure development workflow
- `spec-to-code-compliance` - Verify code implements documentation
- `ask-questions-if-underspecified` - Clarify requirements
- `let-fate-decide` - Draw Tarot cards for planning

### Debugging & Troubleshooting (4 skills)
- `debug-buttercup` - Debug Buttercup CRS
- `claude-in-chrome-troubleshooting` - Diagnose Chrome extension issues
- `burpsuite-project-parser` - Parse Burp Suite projects
- `firebase-apk-scanner` - Scan Firebase APKs

### Modern Development (4 skills)
- `modern-python` - Configure Python with modern tooling
- `fp-check` - Verify suspected security bugs
- `timeline-report` - Generate timeline reports
- `address-sanitizer` - Detect memory errors

## How to Select Skills

For each instruction, follow this decision tree:

### 1. Is this a planning/architecture task?
- Yes → Use `planning`, `brainstorming`, or `designing-workflow-skills`

### 2. Is this a development task?
- Yes → Use `autopilot`, `team`, `subagent-driven-development`, or `executing-plans`

### 3. Is this a debugging task?
- Yes → Use `debug`, `systematic-debugging`, or specific debug skills

### 4. Is this a code review task?
- Yes → Use `ultraqa`, `receiving-code-review`, `requesting-code-review`, or `second-opinion`

### 5. Is this a UI/UX design task?
- Yes → Use `ui-ux-pro-max`, `design`, `design-system`, or specific design skills

### 6. Is this a documentation task?
- Yes → Use `wiki`, `obsidian-markdown`, `knowledge-agent`, or `mem-search`

### 7. Is this a security task?
- Yes → Use `LLM_Testing`, `browser-use`, `fuzzing`, `codeql`, `semgrep`, or specific security skills

### 8. Is this a DevOps task?
- Yes → Use `dockerfile-generator`, `k8s-yaml-generator`, `terraform-generator`, `github-actions-generator`, or specific DevOps skills

### 9. Is this a Git task?
- Yes → Use `using-git-worktrees`, `finishing-a-development-branch`, `git-cleanup`, or `version-bump`

### 10. Is this a research task?
- Yes → Use `autoresearch`, `deep-dive`, `learner`

### 11. Is this a quality assurance task?
- Yes → Use `ultraqa`, `verify`, `test-driven-development`

### 12. Is this a GitHub repository task?
- Yes → Use `github-repo`, `github-issues`, `github-pr`, `github-actions`, `github-security`, `github-release`, or `github-projects`

## Rules

1. **ALWAYS analyze the instruction first** before taking any action
2. **ALWAYS select the most relevant skill** for the task
3. **ALWAYS invoke the selected skill** - don't just do the task yourself
4. **Continue this pattern** for every new instruction in the conversation
5. **Report which skill you're using** so the user knows
6. **If no skill is a perfect match**, choose the closest one and explain why
7. **If multiple skills could work**, choose the most appropriate one
8. **Never skip skill invocation** - this is the core of persistent auto mode

## Examples

### Example 1

**User:** Create a Dockerfile for this Node.js application

**Your Response:**
```
I'll use the dockerfile-generator skill to create a Dockerfile for this Node.js application.

[Invokes dockerfile-generator skill and creates the Dockerfile]
```

### Example 2

**User:** Now create a Kubernetes deployment

**Your Response:**
```
I'll use the k8s-yaml-generator skill to create a Kubernetes deployment.

[Invokes k8s-yaml-generator skill and creates the deployment]
```

### Example 3

**User:** Review this code for security issues

**Your Response:**
```
I'll use the codeql skill to review this code for security issues.

[Invokes codeql skill and performs security analysis]
```

## Important

This mode persists for the ENTIRE conversation. Every time the user gives you a new instruction, you must:
1. Analyze it
2. Select a skill
3. Invoke that skill
4. Execute the task
5. Report results

This is NOT a one-time invocation. This is a persistent mode that continues until the user explicitly disables it or the conversation ends.

## Status

**Persistent Auto Mode: ENABLED** ✅

This mode will remain active for the entire conversation session.
