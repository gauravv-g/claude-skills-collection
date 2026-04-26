---
name: planning
description: Create structured implementation plans with phased execution. Use when planning any development work, creating step-by-step plans, breaking work into phases, organizing tasks for subagent execution, or creating detailed project plans.
---

# Planning

Unified planning skill combining structured plan writing with phased plan creation:

## 1. Plan Writing Principles

- Every plan must have a clear goal, success criteria, and verification steps
- Break work into atomic, independently verifiable tasks
- Define dependencies between tasks explicitly
- Include rollback strategies for each step
- Plans should be reviewed before execution (use plan-document-reviewer pattern)

### Plan Document Structure

1. Objective and success criteria
2. Context and constraints
3. Task breakdown with dependencies
4. Verification checklist per task
5. Rollback procedures
6. Timeline and priority

## 2. Phased Plan Creation

- Organize tasks into sequential phases with clear gates
- Each phase produces a verifiable deliverable
- Use phase gates: plan > verify > proceed
- Support for parallel execution within phases
- Integration with subagent-driven execution

### Phased Structure

1. Research phase - gather context, understand constraints
2. Design phase - architecture decisions, API contracts
3. Implementation phase - atomic task execution
4. Verification phase - test deliverables against criteria
5. Integration phase - connect phases end-to-end

## Integration

- Use with `executing-plans` to run the plan
- Use with `subagent-driven-development` to delegate plan tasks
- Use with `verification-before-completion` to validate outcomes
- Use with `/gsd:plan-phase` for GSD workflow integration
- Use with `do` skill for subagent-based execution
