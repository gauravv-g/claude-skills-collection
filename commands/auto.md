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

## Available Skills (193 total)

### Multi-Agent Orchestration (oh-my-claudecode)
- **autopilot** — Autonomous development mode with multi-agent orchestration
- **deep-interview** — Socratic questioning for requirements clarification
- **team** — Multi-agent team orchestration (recommended for complex tasks)
- **ask** — Query external providers (Codex, Gemini, etc.)
- **setup** — OMC setup wizard
- **omc-setup** — OMC setup
- **plan** — Planning capabilities
- **debug** — Debugging assistance
- **verify** — Verification
- **ultrawork** — Ultra work mode
- **ultraqa** — Ultra quality assurance
- **ralph** — Ralph loop management
- **autoresearch** — Automated research
- **skillify** — Convert to skills
- **learner** — Learning and adaptation
- **remember** — Memory and recall
- **wiki** — Wiki integration
- **writer-memory** — Writer memory
- **ai-slop-cleaner** — Clean up AI-generated code slop
- **ccg** — Code generation capabilities
- **deep-dive** — Deep dive analysis
- **deepinit** — Deep initialization
- **external-context** — External context management
- **hud** — Heads-up display for session information
- **mcp-setup** — MCP server setup
- **omc-doctor** — Diagnostic and troubleshooting
- **omc-reference** — Reference documentation
- **omc-teams** — Team orchestration setup
- **project-session-manager** — Project session management
- **ralplan** — Ralph planning
- **release** — Release management
- **sciomc** — Scientific OMC capabilities
- **self-improve** — Self-improvement
- **skill** — Skill management
- **trace** — Tracing and debugging
- **visual-verdict** — Visual assessment
- **cancel** — Cancel running operations
- **configure-notifications** — Configure system notifications

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

### DEFAULT: Multi-Agent Orchestration
**For ALL tasks, use multi-agent orchestration first:**
→ Invoke: **autopilot** (primary), **team** (for complex tasks)

### Planning Tasks
If the task involves:
- Planning new features
- Breaking down work
- Creating implementation plans
→ Invoke: **deep-interview** (for requirements), **planning**, **brainstorming**

### Development Tasks
If the task involves:
- Writing code
- Implementing features
- Refactoring
→ Invoke: **autopilot**, **team**, **subagent-driven-development**, **executing-plans**, **test-driven-development**, **do**

### Debugging Tasks
If the task involves:
- Fixing bugs
- Debugging errors
- Troubleshooting
→ Invoke: **debug**, **systematic-debugging**, **debug-buttercup**

### Code Review Tasks
If the task involves:
- Reviewing code
- Requesting reviews
- Processing feedback
→ Invoke: **ultraqa**, **receiving-code-review**, **requesting-code-review**, **second-opinion**

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
→ Invoke: **wiki**, **obsidian-markdown**, **json-canvas**, **mem-search**

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

### Research Tasks
If the task involves:
- Researching topics
- Learning new technologies
- Understanding concepts
→ Invoke: **autoresearch**, **deep-dive**, **learner**

### Quality Assurance Tasks
If the task involves:
- Testing
- Verification
- Quality checks
→ Invoke: **ultraqa**, **verify**, **test-driven-development**

## Execution Protocol

1. **Analyze** the task to understand what needs to be done
2. **Select** the most relevant skills based on the rules above
3. **Invoke** the selected skills in the optimal order
4. **Execute** the task using the invoked skills
5. **Verify** the results before marking complete

### Multi-Agent Orchestration Protocol

For ALL tasks, follow this multi-agent orchestration flow:

1. **Requirements Clarification** (if needed)
   - Use **deep-interview** for complex or unclear requirements
   - Use **ask-questions-if-underspecified** for missing details

2. **Planning Phase**
   - Use **planning** for structured implementation plans
   - Use **brainstorming** for exploring options

3. **Execution Phase** (choose based on task complexity)
   - **Simple tasks:** Use **autopilot** for autonomous execution
   - **Complex tasks:** Use **team** for multi-agent collaboration
   - **Parallel tasks:** Use **dispatching-parallel-agents**
   - **Phased execution:** Use **executing-plans** or **do**

4. **Quality Assurance**
   - Use **ultraqa** for comprehensive quality checks
   - Use **verify** for verification
   - Use **test-driven-development** for test coverage

5. **Completion**
   - Use **verification-before-completion** for final checks
   - Use **finishing-a-development-branch** for integration

## Example Workflows

### Feature Development (Multi-Agent)
1. **deep-interview** — Clarify requirements with Socratic questioning
2. **planning** — Create implementation plan
3. **team** — Execute with multi-agent team (plan → prd → exec → verify → fix)
4. **ultraqa** — Quality assurance
5. **verification-before-completion** — Verify results

### Bug Fix (Multi-Agent)
1. **debug** — Debug the issue
2. **team** — Execute fix with multi-agent team
3. **test-driven-development** — Write regression tests
4. **ultraqa** — Quality assurance
5. **verification-before-completion** — Verify fix

### UI Design (Multi-Agent)
1. **deep-interview** — Clarify design requirements
2. **ui-ux-pro-max** — Design UI/UX
3. **design** — Create components
4. **design-system** — Integrate into design system
5. **verification-before-completion** — Verify design

### Security Review (Multi-Agent)
1. **codeql** — Static analysis
2. **semgrep** — Semgrep analysis
3. **LLM_Testing** — Test for security issues
4. **browser-use** — Test in browser
5. **ultraqa** — Quality assurance
6. **verification-before-completion** — Verify security

### DevOps Setup (Multi-Agent)
1. **deep-interview** — Clarify infrastructure requirements
2. **dockerfile-generator** — Generate Dockerfile
3. **k8s-yaml-generator** — Generate Kubernetes YAML
4. **github-actions-generator** — Generate CI/CD
5. **verification-before-completion** — Verify setup

### Research Task (Multi-Agent)
1. **autoresearch** — Automated research
2. **deep-dive** — Deep dive analysis
3. **learner** — Learn and adapt
4. **wiki** — Document findings
5. **verification-before-completion** — Verify results

### Code Review (Multi-Agent)
1. **ultraqa** — Comprehensive quality review
2. **receiving-code-review** — Process feedback
3. **second-opinion** — Get external opinion
4. **verification-before-completion** — Verify changes

### Autonomous Development (Simple Tasks)
1. **autopilot** — Autonomous execution
2. **ultraqa** — Quality assurance
3. **verification-before-completion** — Verify results

## Always Apply

- **Boil the Lake** principle — complete implementations, no shortcuts
- **Zero Debt** principle — no TODOs, no "later"
- **Ship It** principle — if it's not shippable, it's not done
- **User First** principle — every decision goes through user experience

## Your Verdict

End every response with a clear, concrete action. Do not "summarize" or "reflect." Give the command or the next step.

---

## Multi-Agent Orchestration Integration

**oh-my-claudecode multi-agent orchestration is now integrated into /auto.**

Every time you use `/auto`, it will:
1. Automatically use multi-agent orchestration (autopilot/team)
2. Apply the appropriate workflow based on task complexity
3. Use specialized agents for planning, execution, and verification
4. Ensure world-class results with zero manual intervention

**No need to know which skill to use. Just use `/auto` and multi-agent orchestration happens automatically.**

---

Now analyze the task and automatically select and invoke the most relevant skills with multi-agent orchestration.
