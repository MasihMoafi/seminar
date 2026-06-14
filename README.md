# 🎓 Bounded AI Agentic Seminar & Research Paper Harness

This repository documents the methodology and paper draft for **"Design and Evaluation of a Controlled Experimentation Harness for Assessing and Steering Single- and Multi-Agent LLM Workflows."**

The objective of this project is to define a minimal, reproducible, and verifiable context harness that constrains an LLM agent to produce high-fidelity academic reports without live supervision or process theater.

---

## 🛠️ The Triad: Bounded Agent Environments

This experiment ties together three key projects in our agentic workflow:

1.  **[harnesses-I-use](https://github.com/MasihMoafi/harnesses-I-use)**: The baseline repository rules, constraints, and context scaffolds (`AGENTS.md`, `CODEX_CODING_GUIDELINES.md`, `TERMINAL_AND_GIT_RULES.md`) that ground local agents.
2.  **[Voice-commander](https://github.com/MasihMoafi/Voice-commander)**: A local, GPU-accelerated voice transcription and Gemini refinement pipeline that allows friction-free developer dictation.
3.  **[seminar (this repo)](https://github.com/MasihMoafi/seminar)**: The academic implementation of this harness. It models the experiment loop using Andrej Karpathy's **[autoresearch](https://github.com/karpathy/autoresearch)** pattern as a reference for pipeline simplicity.

---

## 📂 Repository Contents

*   **[`REPORT.md`](REPORT.md)**: The current draft of the academic seminar paper detailing the harness design, limitations, and evaluation gates.
*   **[`manual.md`](manual.md)**: The active steering manual used by the agent during the experiment run.
*   **[`init.sh`](init.sh)**: A simple bootstrap script for workspace verification.
*   **[`handoff.md`](handoff.md)**: The continuous context transition log used to transfer state between session runs.

---

## 🔗 References & Research

*   For details on the underlying ML baseline (Bayesian classifiers vs. PyTorch MLPs), see our sensor classification experiments.
*   Personal website, research, and papers: **[masihmoafi.tech](https://masihmoafi.tech)**
