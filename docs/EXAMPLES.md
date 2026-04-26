# Examples

This page contains examples of using the Claude Skills Collection.

## Basic Examples

### Development Tasks

#### Create a New Feature

```bash
/auto create a user authentication system with JWT tokens
```

#### Fix a Bug

```bash
/auto fix the memory leak in the image processing function
```

#### Refactor Code

```bash
/auto refactor the user service to use dependency injection
```

### Code Review

#### Review Current Changes

```bash
/auto review the current branch for security issues
```

#### Get Second Opinion

```bash
/auto get a second opinion on this implementation
```

### DevOps Tasks

#### Generate Dockerfile

```bash
/auto generate a Dockerfile for this Node.js application
```

#### Create Kubernetes Manifests

```bash
/auto create Kubernetes deployment and service manifests
```

#### Setup CI/CD

```bash
/auto create a GitHub Actions workflow for testing and deployment
```

### Security Tasks

#### Security Audit

```bash
/auto perform a security audit of this codebase
```

#### Fuzz Testing

```bash
/auto set up fuzzing for the authentication module
```

#### Vulnerability Scan

```bash
/auto scan for known vulnerabilities in dependencies
```

### UI/UX Tasks

#### Design a Component

```bash
/auto design a responsive navigation component
```

#### Create a Design System

```bash
/auto create a design system with color palette and typography
```

#### Style a Page

```bash
/auto style the dashboard page with modern UI
```

### Documentation Tasks

#### Write API Documentation

```bash
/auto write comprehensive API documentation
```

#### Create Architecture Diagram

```bash
/auto create an architecture diagram for the system
```

#### Generate User Guide

```bash
/auto generate a user guide for the application
```

## Advanced Examples

### Multi-Agent Orchestration

#### Complex Feature Development

```bash
/auto implement a real-time chat feature with WebSocket support
```

This will automatically:
1. Use `deep-interview` to clarify requirements
2. Use `planning` to create an implementation plan
3. Use `team` to execute with multiple agents
4. Use `ultraqa` for quality assurance
5. Use `verification-before-completion` to verify results

### Parallel Development

#### Multiple Independent Tasks

```bash
/auto create unit tests for all services and generate API documentation
```

This will use `dispatching-parallel-agents` to work on both tasks simultaneously.

### Research and Implementation

#### New Technology Integration

```bash
/auto integrate GraphQL into the existing REST API
```

This will:
1. Use `autoresearch` to research GraphQL best practices
2. Use `deep-dive` to analyze the current API
3. Use `learner` to understand GraphQL patterns
4. Use `subagent-driven-development` to implement the integration

## Category-Specific Examples

### Multi-Agent Orchestration

```bash
# Autonomous development
/auto build a complete e-commerce checkout flow

# Team-based development
/auto implement a complex multi-step workflow with team orchestration

# Deep analysis
/auto analyze the performance bottlenecks in the application
```

### Planning & Architecture

```bash
# Plan a feature
/auto plan the implementation of a new notification system

# Brainstorm ideas
/auto brainstorm ways to improve the user onboarding experience

# Design workflow
/auto design a workflow for the data processing pipeline
```

### Development Workflow

```bash
# Test-driven development
/auto implement a payment gateway with TDD

# Systematic debugging
/auto debug the intermittent connection timeout issue

# Smart exploration
/auto explore the codebase to understand the authentication flow
```

### Code Quality

```bash
# Code review
/auto review the pull request for best practices

# Second opinion
/auto get a second opinion on the database schema design

# Code maturity assessment
/auto assess the code maturity of the legacy module
```

### Git & Version Control

```bash
# Git worktree
/auto create a git worktree for the feature branch

# Git cleanup
/auto clean up the git history and remove old branches

# Version bump
/auto bump the version for the next release
```

### UI/UX Design

```bash
# UI/UX design
/auto design a modern dashboard with dark mode support

# Design system
/auto create a design system for the mobile app

# Banner design
/auto design promotional banners for the marketing campaign
```

### Documentation & Knowledge

```bash
# Wiki documentation
/auto create comprehensive wiki documentation

# Obsidian integration
/auto set up Obsidian for project documentation

# Knowledge base
/auto create a searchable knowledge base for the team
```

### Security & Testing

```bash
# Security testing
/auto perform security testing on the authentication system

# Browser automation
/auto automate browser testing for the checkout flow

# Testing handbook
/auto generate a testing handbook for the project
```

### Security Research

```bash
# Fuzzing
/auto set up fuzzing for the input validation module

# Security fuzzing
/auto perform security fuzzing on the API endpoints

# Pattern matching
/auto search for security patterns in the codebase
```

### Static Analysis & Security Tools

```bash
# CodeQL scan
/auto run CodeQL to find security vulnerabilities

# Semgrep analysis
/auto run Semgrep for custom security rules

# Supply chain audit
/auto audit the supply chain for security risks
```

### Fuzzing & Testing

```bash
# LibFuzzer
/auto set up LibFuzzer for the C++ module

# AFL++
/auto configure AFL++ for the network protocol

# Mutation testing
/auto set up mutation testing for the test suite
```

### Cryptography & Blockchain

```bash
# Constant-time analysis
/auto analyze the crypto code for timing vulnerabilities

# Crypto protocol diagram
/auto create a diagram for the authentication protocol

# Vulnerability scanner
/auto scan the smart contract for vulnerabilities
```

### DevOps & Infrastructure

```bash
# Dockerfile
/auto generate an optimized Dockerfile for the application

# Kubernetes
/auto create Kubernetes manifests for production deployment

# Terraform
/auto generate Terraform configuration for cloud infrastructure

# GitHub Actions
/auto create a comprehensive CI/CD pipeline with GitHub Actions
```

### Security Analysis

```bash
# Insecure defaults
/auto scan for insecure default configurations

# Sharp edges
/auto identify dangerous APIs and configurations

# Trailmark analysis
/auto perform Trailmark structural analysis
```

### Debugging & Troubleshooting

```bash
# Debug Buttercup
/auto debug the Buttercup CRS system

# Chrome troubleshooting
/auto diagnose Claude in Chrome extension issues

# Firebase APK scan
/auto scan the Firebase APK for security issues
```

### Modern Development

```bash
# Modern Python
/auto configure the Python project with modern tooling

# FP check
/auto verify suspected security bugs

# Timeline report
/auto generate a timeline report of the project development
```

## Tips and Best Practices

1. **Be Specific**: The more specific your task description, the better the results
2. **Use Context**: Provide relevant context about your project
3. **Iterate**: Start with a simple task and build up complexity
4. **Review Results**: Always review the generated code and suggestions
5. **Learn**: Use the opportunity to learn from the AI's suggestions

## Common Patterns

### Pattern 1: Feature Development

```bash
/auto implement [feature name] with [requirements]
```

### Pattern 2: Bug Fix

```bash
/auto fix [bug description] in [module/component]
```

### Pattern 3: Code Improvement

```bash
/auto improve [code area] by [improvement type]
```

### Pattern 4: Documentation

```bash
/auto document [component/feature] with [documentation type]
```

### Pattern 5: Testing

```bash
/auto create [test type] tests for [component/feature]
```

## Need More Examples?

- 📖 [Full Documentation](../README.md)
- 🎯 [Quick Start](QUICK_START.md)
- ⚙️ [Configuration](CONFIGURATION.md)
- 💬 [Discord Community](https://discord.gg/)

---

**Happy Coding! 🚀**
