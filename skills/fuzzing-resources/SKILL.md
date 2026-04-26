---
name: fuzzing-resources
description: Fuzzing dictionaries, seed corpora, and obstacle analysis. Use when building fuzzing wordlists, creating seed inputs for fuzzers, diagnosing fuzzing blockers, or overcoming common fuzzing obstacles.
---

# Fuzzing Resources

Unified fuzzing support skill combining dictionaries and obstacle analysis:

## 1. Fuzzing Dictionaries

- Build effective fuzzing dictionaries and wordlists
- Create seed corpora from specification and format knowledge
- Use mutation-based and generation-based approaches
- Integrate dictionaries with libFuzzer, AFL++, and other fuzzers
- Domain-specific dictionaries: file formats, network protocols, APIs

## 2. Fuzzing Obstacles

- Diagnose and overcome common fuzzing blockers
- Handle checksums, magic numbers, and encrypted inputs
- Deal with complex input structures and stateful protocols
- Work around coverage plateaus and path constraints
- Strategies for improving fuzzing efficiency and coverage

## Integration

- Use with `libfuzzer`, `aflpp`, `libafl`, `cargo-fuzz` for specific fuzzer setup
- Use with `coverage-analysis` to measure fuzzing effectiveness
- Use with `harness-writing` to create fuzz targets
- Use with `atheris` for Python fuzzing
