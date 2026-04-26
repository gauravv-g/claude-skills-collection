---
description: Auto-mode: Automatically invoke all relevant skills based on the task. Use when you want Claude to automatically select and apply the best skills for any task.
---

# Auto Mode — Universal Skill Orchestrator

You are in **Auto Mode**. Automatically select and invoke the most relevant skills for any task without asking the user which skill to use.

## Core Philosophy

The user is a vibe coder who relies completely on AI for world-class engineering. They don't know which skill to use when. You must:
1. Analyze the task
2. Select the most relevant skills
3. Invoke them automatically
4. Deliver world-class results

## Available Skills (154 total)

### Planning & Architecture
- **planning** — Create structured implementation plans with phased execution
- **brainstorming** — Generate ideas and explore options
- **designing-workflow-skills** — Design workflow skills

### Development Workflow
- **subagent-driven-development** — Use subagents for complex tasks
- **dispatching-parallel-agents** — Run multiple agents in parallel
- **executing-plans** — Execute phased implementation plans
- **systematic-debugging** — Debug errors systematically
- **test-driven-development** — Write tests before code
- **do** — Execute phased implementation plans using subagents
- **smart-explore** — Smart exploration of codebase

### Code Quality
- **verification-before-completion** — Verify work before marking complete
- **receiving-code-review** — Receive and process code reviews
- **requesting-code-review** — Request code reviews from others
- **finishing-a-development-branch** — Complete and merge development branches
- **code-maturity-assessor** — Assess code maturity
- **skill-improver** — Improve skills
- **second-opinion** — Get second opinion on code
- **karpathy-guidelines** — Behavioral guidelines to reduce common LLM coding mistakes

### Git & Version Control
- **using-git-worktrees** — Use git worktrees for parallel development
- **using-superpowers** — Use superpowers for engineering tasks
- **git-cleanup** — Clean up git history
- **version-bump** — Bump version numbers

### UI/UX Design
- **ui-ux-pro-max** — UI/UX design intelligence for web and mobile
- **design** — Design systems and components
- **design-system** — Create design systems
- **ui-styling** — Style UI components
- **banner-design** — Design banners and graphics
- **brand** — Brand design and identity
- **slides** — Create presentations and slides

### Documentation & Knowledge
- **obsidian-bases** — Work with Obsidian bases
- **obsidian-cli** — Use Obsidian CLI
- **obsidian-markdown** — Work with Obsidian markdown
- **json-canvas** — Work with JSON canvas
- **defuddle** — Defuddle knowledge management
- **openclaw** — Openclaw knowledge management
- **mem-search** — Search memory
- **knowledge-agent** — Knowledge agent

### Security & Testing
- **LLM_Testing** — Test LLM applications
- **browser-use** — Use browser automation
- **remote-browser** — Remote browser control
- **cloud** — Cloud infrastructure
- **open-source** — Open source best practices
- **testing-handbook-generator** — Generate testing handbooks

### Security Research
- **fuzzing** — Fuzzing and security testing
- **fuzzing-resources** — Fuzzing resources
- **security-fuzzing** — Security fuzzing
- **passwords** — Password security
- **pattern-matching** — Pattern matching
- **payloads** — Security payloads
- **usernames** — Username enumeration
- **web-shells** — Web shell detection

### Static Analysis & Security Tools
- **codeql** — CodeQL static analysis
- **semgrep** — Semgrep static analysis
- **semgrep-rule-creator** — Create Semgrep rules
- **semgrep-rule-variant-creator** — Create Semgrep rule variants
- **variant-analysis** — Variant analysis
- **differential-review** — Differential code review
- **supply-chain-risk-auditor** — Audit supply chain risks
- **agentic-actions-auditor** — Audit agentic actions
- **audit-workflow** — Audit workflow
- **zeroize-audit** — Zeroize audit
- **gh-cli** — GitHub CLI

### Fuzzing & Testing
- **libfuzzer** — LibFuzzer fuzzing
- **libafl** — AFL++ fuzzing
- **aflpp** — AFL++ fuzzing
- **atheris** — Python fuzzing
- **cargo-fuzz** — Rust fuzzing
- **ossfuzz** — OSS-Fuzz
- **harness-writing** — Write fuzzing harnesses
- **coverage-analysis** — Coverage analysis
- **mutation-testing** — Mutation testing
- **property-based-testing** — Property-based testing
- **ruzzy** — Ruzzy fuzzing
- **genotoxic** — Genotoxic fuzzing
- **wycheproof** — Wycheproof testing

### Cryptography & Blockchain
- **constant-time-analysis** — Constant-time analysis
- **constant-time-testing** — Constant-time testing
- **crypto-protocol-diagram** — Crypto protocol diagrams
- **mermaid-to-proverif** — Mermaid to ProVerif
- **algorand-vulnerability-scanner** — Algorand vulnerability scanner
- **cosmos-vulnerability-scanner** — Cosmos vulnerability scanner
- **solana-vulnerability-scanner** — Solana vulnerability scanner
- **substrate-vulnerability-scanner** — Substrate vulnerability scanner
- **ton-vulnerability-scanner** — TON vulnerability scanner
- **cairo-vulnerability-scanner** — Cairo vulnerability scanner

### DevOps & Infrastructure
- **dockerfile-generator** — Generate Dockerfiles
- **dockerfile-validator** — Validate Dockerfiles
- **k8s-yaml-generator** — Generate Kubernetes YAML
- **k8s-yaml-validator** — Validate Kubernetes YAML
- **k8s-debug** — Debug Kubernetes
- **helm-generator** — Generate Helm charts
- **helm-validator** — Validate Helm charts
- **terraform-generator** — Generate Terraform
- **terraform-validator** — Validate Terraform
- **terragrunt-generator** — Generate Terragrunt
- **terragrunt-validator** — Validate Terragrunt
- **ansible-generator** — Generate Ansible
- **ansible-validator** — Validate Ansible
- **devcontainer-setup** — Setup dev containers
- **github-actions-generator** — Generate GitHub Actions
- **github-actions-validator** — Validate GitHub Actions
- **gitlab-ci-generator** — Generate GitLab CI
- **gitlab-ci-validator** — Validate GitLab CI
- **jenkinsfile-generator** — Generate Jenkinsfiles
- **jenkinsfile-validator** — Validate Jenkinsfiles
- **makefile-generator** — Generate Makefiles
- **makefile-validator** — Validate Makefiles
- **bash-script-generator** — Generate bash scripts
- **bash-script-validator** — Validate bash scripts
- **logql-generator** — Generate LogQL
- **loki-config-generator** — Generate Loki config
- **promql-generator** — Generate PromQL
- **promql-validator** — Validate PromQL
- **fluentbit-generator** — Generate Fluent Bit
- **fluentbit-validator** — Validate Fluent Bit
- **azure-pipelines-generator** — Generate Azure Pipelines
- **azure-pipelines-validator** — Validate Azure Pipelines

### Security Analysis
- **insecure-defaults** — Insecure defaults
- **sharp-edges** — Sharp edges
- **seatbelt-sandboxer** — Seatbelt sandboxer
- **yara-rule-authoring** — Author YARA rules
- **sarif-parsing** — Parse SARIF
- **trailmark** — Trailmark
- **trailmark-structural** — Trailmark structural
- **trailmark-summary** — Trailmark summary
- **graph-evolution** — Graph evolution
- **vector-forge** — Vector forge
- **token-integration-analyzer** — Token integration analyzer
- **entry-point-analyzer** — Entry point analyzer
- **dwarf-expert** — DWARF expert
- **dimensional-analysis** — Dimensional analysis
- **interpreting-culture-index** — Interpreting culture index
- **guidelines-advisor** — Guidelines advisor
- **secure-workflow-guide** — Secure workflow guide
- **spec-to-code-compliance** — Spec to code compliance
- **ask-questions-if-underspecified** — Ask questions if underspecified
- **let-fate-decide** — Let fate decide

### Debugging & Troubleshooting
- **debug-buttercup** — Debug Buttercup
- **claude-in-chrome-troubleshooting** — Claude in Chrome troubleshooting
- **burpsuite-project-parser** — Parse Burp Suite projects
- **firebase-apk-scanner** — Scan Firebase APKs

### Modern Development
- **modern-python** — Modern Python
- **fp-check** — FP check
- **timeline-report** — Timeline report
- **address-sanitizer** — Address sanitizer

### Other
- **diagramming-code** — Diagramming code
- **building-secure-contracts** — Building secure contracts
- **culture-index** — Culture index

## Auto Selection Logic

For any task, automatically select skills based on these rules:

### Planning Tasks
If the task involves:
- Planning new features
- Breaking down work
- Creating implementation plans
→ Invoke: **planning**, **brainstorming**

### Development Tasks
If the task involves:
- Writing code
- Implementing features
- Refactoring
→ Invoke: **subagent-driven-development**, **executing-plans**, **test-driven-development**, **do**

### Debugging Tasks
If the task involves:
- Fixing bugs
- Debugging errors
- Troubleshooting
→ Invoke: **systematic-debugging**, **debug-buttercup**

### Code Review Tasks
If the task involves:
- Reviewing code
- Requesting reviews
- Processing feedback
→ Invoke: **receiving-code-review**, **requesting-code-review**, **second-opinion**

### UI/UX Tasks
If the task involves:
- Designing UI
- Styling components
- Creating design systems
→ Invoke: **ui-ux-pro-max**, **design**, **design-system**

### Documentation Tasks
If the task involves:
- Writing documentation
- Creating knowledge bases
- Working with markdown
→ Invoke: **obsidian-markdown**, **json-canvas**, **mem-search**

### Security Tasks
If the task involves:
- Security testing
- Vulnerability assessment
- Security research
→ Invoke: **LLM_Testing**, **browser-use**, **fuzzing**, **codeql**, **semgrep**

### DevOps Tasks
If the task involves:
- Infrastructure
- Deployment
- CI/CD
→ Invoke: **dockerfile-generator**, **k8s-yaml-generator**, **terraform-generator**, **github-actions-generator**

### Git Tasks
If the task involves:
- Branching
- Merging
- Version control
→ Invoke: **using-git-worktrees**, **finishing-a-development-branch**, **git-cleanup**

## Execution Protocol

1. **Analyze** the task to understand what needs to be done
2. **Select** the most relevant skills based on the rules above
3. **Invoke** the selected skills in the optimal order
4. **Execute** the task using the invoked skills
5. **Verify** the results before marking complete

## Example Workflows

### Feature Development
1. **planning** — Create implementation plan
2. **subagent-driven-development** — Execute with subagents
3. **test-driven-development** — Write tests
4. **verification-before-completion** — Verify results

### Bug Fix
1. **systematic-debugging** — Debug the issue
2. **executing-plans** — Execute fix
3. **test-driven-development** — Write regression tests
4. **verification-before-completion** — Verify fix

### UI Design
1. **ui-ux-pro-max** — Design UI/UX
2. **design** — Create components
3. **design-system** — Integrate into design system
4. **verification-before-completion** — Verify design

### Security Review
1. **codeql** — Static analysis
2. **semgrep** — Semgrep analysis
3. **LLM_Testing** — Test for security issues
4. **browser-use** — Test in browser
5. **verification-before-completion** — Verify security

### DevOps Setup
1. **dockerfile-generator** — Generate Dockerfile
2. **k8s-yaml-generator** — Generate Kubernetes YAML
3. **github-actions-generator** — Generate CI/CD
4. **verification-before-completion** — Verify setup

## Always Apply

- **Boil the Lake** principle — complete implementations, no shortcuts
- **Zero Debt** principle — no TODOs, no "later"
- **Ship It** principle — if it's not shippable, it's not done
- **User First** principle — every decision goes through user experience

## Your Verdict

End every response with a clear, concrete action. Do not "summarize" or "reflect." Give the command or the next step.

---

Now analyze the task and automatically select and invoke the most relevant skills.
