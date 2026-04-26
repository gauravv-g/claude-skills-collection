---
name: audit-workflow
description: Comprehensive security audit workflow combining preparation, context building, and augmentation. Use when preparing for a security audit, building audit context from codebase analysis, augmenting audit findings, or managing the full audit lifecycle.
---

# Audit Workflow

Unified security audit skill combining three complementary capabilities:

## 1. Audit Preparation

Before starting a security audit:
- Identify scope, trust boundaries, and entry points
- Map attack surface and data flows
- Gather prior audit reports and known issues
- Set up analysis tooling (semgrep, codeql, etc.)
- Create audit checklist based on technology stack

## 2. Audit Context Building

Build comprehensive context for the audit:
- Analyze codebase architecture and component relationships
- Identify security-relevant code paths and privilege boundaries
- Map dependencies and supply chain risks
- Document assumptions and threat model
- Cross-reference with known vulnerability patterns

## 3. Audit Augmentation

Enhance audit findings with additional evidence:
- Cross-reference findings across analysis tools
- Identify related vulnerabilities and compound issues
- Add severity ratings and remediation guidance
- Generate audit report with executive summary
- Track findings through remediation lifecycle

## Integration

- Use with `semgrep` and `codeql` for static analysis
- Use with `supply-chain-risk-auditor` for dependency risks
- Use with `gsd:secure-phase` for GSD workflow integration
- Use with `agentic-actions-auditor` for AI agent security review
