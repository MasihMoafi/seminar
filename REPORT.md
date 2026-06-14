# Design and Evaluation of a Controlled Experimentation Harness for Assessing and Steering Single- and Multi-Agent LLM Workflows

## Abstract

Section claim: A minimal, controlled experimentation harness allows for the systematic assessment and steering of LLM agent workflows to produce high-quality, inspectable graduate-level research artifacts.
Sources needed: `seminar.pdf` (topic framing).
Artifact needs: The minimal harness protocol (`manual.md`).
Visual/table needs: None yet.
Quality gates: Problem and contribution gate (states problem, contribution, and evidence compactly).

## 1. Introduction

### 1.1 Problem Background
The integration of Large Language Models (LLMs) into autonomous software agents has led to systems capable of executing complex, multi-step workflows. However, as these agents operate in open-ended environments, they frequently generate excessive process artifacts—such as extensive log files, speculative dashboards, and intermediate checkpoints. This over-production obscures the actual output and complicates human verification, shifting focus from the generated artifact to the agent's internal process.

### 1.2 Necessity and Motivation
Current frameworks typically focus on maximizing unbounded agent autonomy or managing interactions among multiple agents (e.g., VeRO, AI Harness Engineering). While these approaches excel in general software tasks, they are not optimized for bounded, high-fidelity academic generation. Producing a graduate-level research paper requires strict artifact discipline, precise sourcing, and transparent output. A minimal control surface is necessary to ensure agents produce verifiable research packages without process clutter.

### 1.3 Problem Statement
Agent-driven research generation suffers from a lack of structured, inspectable constraints. Without a strict experimentation harness, agents often substitute verifiable academic output with process theater—producing artifacts that mimic progress but fail to meet the graduate-level bar for clarity, evidence, and traceability.

### 1.4 Research Objective
This project aims to design and evaluate a minimal, controlled experimentation harness that enables an LLM agent to produce a graduate-level research paper from a submitted seminar topic. The primary objective is to test whether the *harness itself* reliably constrains the agent to produce high-quality, inspectable outputs with reduced live human steering.

### 1.5 Research Questions
1. How can a minimal control surface be designed to guide an LLM agent in generating a structured, verifiable research paper?
2. To what extent does this harness eliminate the generation of unnecessary process artifacts (e.g., decorative plots, false metrics)?
3. Does the harness consistently produce an artifact that satisfies mechanical academic quality gates?

### 1.6 Scope and Boundaries
This experiment is strictly bounded to generating a specific seminar paper from fixed inputs (a provided topic PDF and reference papers). It does not attempt to measure or maximize general, open-ended agent autonomy. The evaluation is focused entirely on the quality of the final paper artifact and the simplicity of the generation process.

### 1.7 Expected Contribution
The contribution is the harness protocol itself—a reproducible, minimal set of mechanical constraints and keep/discard loops. By demonstrating that this harness can yield a graduate-level paper, this project provides a verifiable, artifact-centric template for agent workflows.

### 1.8 Report Structure
The remainder of this report is organized as follows: Chapter 2 reviews the related literature on agent workflows and evaluation substrates. Chapter 3 details the method, defining the proposed minimal paper-production harness. Chapter 4 outlines the evaluation design, followed by Expected Evidence and Results in Chapter 5. The report concludes with Limitations (Chapter 6) and a Conclusion (Chapter 7).

## 2. Related Work

Section claim: While existing frameworks focus on general agent autonomy or complex multi-agent interactions, there is a gap for minimal, inspectable harnesses optimized for producing specific, high-quality academic outputs.
Sources needed: Selected classic method papers and harness-related papers from `/home/masih/Desktop/f/papers/`.
Artifact needs: None.
Visual/table needs: None yet.
Quality gates: Literature gate (compares papers by role and limitation instead of just listing them).

## 3. Method: Minimal Paper-Production Harness

Section claim: The proposed harness enforces a fixed world, a single control surface, and a strict keep/discard loop evaluated against mechanical academic quality criteria.
Sources needed: `manual.md` run protocol, Karpathy/autoresearch reference (workflow shape).
Artifact needs: `init.sh`, `manual.md`, `REPORT.md`.
Visual/table needs: A simple flowchart or architecture diagram of the harness loop and fixed inputs.
Quality gates: Method gate (defines inputs, output target, and loop simply enough for replication), Reproducibility gate.

## 4. Evaluation Design

Section claim: The harness is evaluated not by a generic autonomy score, but by a pass/fail review of the generated paper against strict academic and visual quality gates, measuring steering reduction.
Sources needed: Quality gates from `manual.md`.
Artifact needs: None.
Visual/table needs: A summary table of the quality gates.
Quality gates: Method gate (names what is measured and what is not).

## 5. Expected Evidence and Results

Section claim: Application of the harness yields a verifiable graduate-level paper artifact that passes all quality gates without generating process clutter or requiring hidden human steering.
Sources needed: Generated outputs from this project.
Artifact needs: The completed sections of this report, commit history demonstrating the keep/discard loop.
Visual/table needs: Evidence of the artifact passing gates (e.g., a table comparing Masih-supervised output vs. agent-harness output).
Quality gates: Evidence/results gate (reports concrete artifacts, avoids fake precise scores).

## 6. Limitations

Section claim: The harness strictly bounds the agent to a curated set of inputs and predefined tasks; it does not measure or claim general unbounded agent autonomy.
Sources needed: None.
Artifact needs: None.
Visual/table needs: None.
Quality gates: Limitations gate (states what the harness does not prove).

## 7. Conclusion

Section claim: A constrained, minimal harness successfully shifts the focus from agent autonomy theater to verifiable, high-quality artifact generation.
Sources needed: None.
Artifact needs: None.
Visual/table needs: None.
Quality gates: Problem and contribution gate.

## References
