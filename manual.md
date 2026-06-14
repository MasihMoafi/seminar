# Seminar Manual

Updated: 2026-06-08

## Objective

Create a minimal harness that can produce a graduate-level research paper from
Masih's submitted seminar topic. The paper must include the normal academic
parts: problem framing, related work, method, evidence/results, figures or
visuals where they actually explain something, limitations, and references.

The experiment is the harness itself: can an agent start from the submitted
topic and source papers, follow a small control surface, and produce a
paper-quality seminar artifact repeatably, inspectably, and with less live
Masih supervision?

Masih may later write thesis Chapter 1 and Chapter 2 to explain this experiment.
Those thesis chapters are not the experiment. The experiment is whether this
harness can make an agent produce a graduate-level research paper package.

The failed v1 checkpoint/dashboard experiment is not the report and should not
guide the new draft except as a negative lesson.

## Fixed Inputs

- Submitted topic: `seminar.pdf`
- Rendered topic pages: `seminar-filled-1.png`, `seminar-filled-2.png`,
  `seminar-filled-3.png`
- Paper-quality reference directory: `/home/masih/Desktop/f/papers/`
- Harness-shape reference: `/home/masih/Desktop/f/repos/autoresearch-master/program.md`
- Harness-engineering skill: `/home/masih/.codex/skills/harness-eng/SKILL.md`
- Private quality reference only: `/home/masih/Desktop/u/pr/sensor_fault_research`

Do not copy the sensor-fault topic. Use it only to remember that Masih's good
AI-assisted report came from iterative supervision, evidence discipline, and
artifact checks.

The sensor-fault project may also be useful as a comparison case: Masih produced
it with AI plus live supervision. The harness experiment asks whether an
agent-alone or mostly-agent workflow can reach a comparable or stronger artifact
standard. It is not itself the graduate-level quality bar.

## Rules

- Simplicity is the bar. If a file does not help write or evaluate the seminar,
  do not create it.
- Keep the control surface small: this manual, the submitted topic, and the
  eventual report draft.
- Use git. Stage explicit paths only. Never use `git add -A`.
- Do not create checkpoint forests, dashboards, decorative plots, or self-score
  theater.
- Figures are allowed only when they explain the actual method, evidence, or
  thesis structure.
- Do not wire in `eval-harness` yet. Keep it available only if agents later
  violate this manual in repeated, observable ways.
- Every important claim must trace to a paper, the submitted topic, or a local
  artifact.
- Prefer a weaker honest claim over a stronger unsupported one.

## Harness Plan

The harness should stay close to the Karpathy/autoresearch shape:

1. Fixed world: topic PDF/images and paper directory are the inputs.
2. One control surface: this manual.
3. One output target: a graduate-level research paper package.
4. One quality gate: compare the artifact against the academic paper criteria
   below.
5. Keep/discard: keep only changes that improve paper quality or reduce
   complexity without lowering quality.

The harness must produce the paper, not a pile of process evidence. If evidence
is needed, keep it inside the report or in a short appendix section.

## Minimal Run Protocol

This protocol is the harness. An agent should follow it before creating a
graduate-level paper package.

### Setup

1. Run `git status --short --branch`.
2. Run `./init.sh`.
3. Read this manual.
4. Inspect the submitted topic from `seminar.pdf` or the rendered
   `seminar-filled-*.png` pages.
5. Sample the paper corpus only as needed for the current paper section. Do not
   read every paper again unless the current section requires it.

### Editable Surface

Allowed files during the first paper run:

- `REPORT.md`
- generated `REPORT.html` or `REPORT.pdf` only after `REPORT.md` exists and the
  user asks for rendered output or a review package

Do not create run folders, dashboards, scorecards, or extra manuals.

### Paper-Generation Loop

For each section of `REPORT.md`:

1. Define the section claim in one sentence.
2. List the sources or local artifacts needed for that claim.
3. Draft the section.
4. Check the section against the relevant quality gates.
5. Keep the section only if it improves the paper without adding process
   clutter.
6. If the section fails, revise it in place or remove it.

The first complete `REPORT.md` should contain:

1. Title and abstract
2. Introduction
3. Related work
4. Method: the paper-production harness
5. Evaluation design: how agent-alone output will be judged
6. Expected or observed results, only if evidence exists
7. Limitations
8. References

### Keep/Discard Rule

Keep a change when it improves at least one quality gate without weakening
simplicity or evidence discipline.

Discard or revise a change when it:

- adds a decorative figure or fake plot;
- lists sources without comparing them;
- claims an experiment result that was not produced;
- hides Masih's supervision or intervention;
- creates extra project-management files;
- makes the paper read like an agent transcript.

### Evaluation Output

The final evaluation is not a self-score. It is a short pass/fail review against
the gates in this manual:

- paper-quality pass/fail;
- visual-quality pass/fail;
- evidence/reproducibility pass/fail;
- steering-reduction pass/fail.

If a precise score is ever used, the scoring method must be written before the
score is produced and must be auditable from local files.

### Stop Conditions

Stop and report if:

- the fixed inputs are missing;
- the topic cannot be read from the PDF/images;
- a required source is unavailable;
- the agent is about to create process clutter to compensate for uncertainty;
- the draft needs Masih's judgment about scope, language, or course expectation.

## First Harness Task: Extract Paper Criteria

Before drafting any new report, extract the features of graduate-level research
papers from `/home/masih/Desktop/f/papers/`.

Create the quality criteria directly in this manual, not in a new side file,
unless Masih explicitly asks for a separate rubric.

Extraction questions:

1. What sections do strong papers reliably include?
2. How do they state the problem and contribution?
3. How do they turn prior work into a gap rather than a list?
4. What makes a method section reproducible?
5. What makes figures and tables academically useful?
6. How do they present experiments, evidence, or analysis?
7. How do they state limitations without weakening the contribution?
8. What citation/reference discipline do they follow?

The extracted criteria become the harness quality gate. Only after that should
the agent attempt a report draft.

## Observed Paper Features

The reference corpus mixes classic method papers, survey papers, and
harness-agent papers. The recurring features are:

- Abstracts state the problem, the contribution, and the main evidence in one
  compact block. Examples: Transformer, U-Net, Inception, VeRO, and AI Harness
  Engineering.
- Introductions motivate a real gap before naming the solution. Strong papers do
  not begin with a tool diary; they explain why the problem matters.
- Related work is selective and contrastive. ResNet, Inception, VeRO, and
  WordNet-style papers use prior work to position the contribution, not to make
  a bibliography dump.
- Method sections make the new object legible: architecture diagrams,
  algorithms, fixed inputs, training/evaluation settings, or harness
  responsibilities. Examples: ResNet residual block, Transformer attention,
  U-Net architecture, VeRO architecture, and the harness ladder.
- Results are tied to named tasks, datasets, baselines, or evaluation settings.
  Tables report exact comparisons; figures show training curves, architecture,
  qualitative outputs, taxonomies, or ablations.
- Useful figures carry information that prose alone would not: architecture,
  data flow, attention maps, performance curves, failure modes, or taxonomy.
- Limitations and conclusions bound the claim. Harness papers especially state
  what the system does not prove.
- References are complete enough for a reader to find the source and understand
  the lineage of the contribution.

## Paper Target

### Chapter 1: Introduction

Purpose: explain the seminar problem and why it matters.

Required sections:

1. Problem background
2. Necessity and motivation
3. Problem statement
4. Research objective
5. Research questions
6. Scope and boundaries
7. Expected contribution
8. Report structure

Acceptance criteria:

- A reader can tell exactly what the project studies.
- The project is not framed as generic "single vs multi-agent" comparison.
- The output/repeatability/reusability goal is explicit.
- Claims are grounded in the submitted topic and cited literature.

### Chapter 2: Literature Review

Purpose: position the project against real research.

Required themes:

1. LLM agents and tool use
2. Agent harnesses and runtime substrates
3. Evaluation environments and benchmarks
4. Reproducibility, tracing, and evidence
5. Human supervision and workflow automation
6. Gap: a small seminar-production harness with inspectable outputs

Acceptance criteria:

- It reads like the papers in `/home/masih/Desktop/f/papers/`: precise,
  sourced, and structured.
- It compares papers instead of listing them.
- It identifies the gap this seminar can reasonably address.
- It does not claim final experimental results before they exist.

### Later Paper Sections

Do not draft these before Chapter 1 and Chapter 2 are stable, but the harness
must be able to produce them:

1. Method: the harness design and run protocol.
2. Evaluation: whether the harness produced the paper with less steering.
3. Results: concrete outputs, revisions, and failure/success evidence.
4. Visuals: only real diagrams, tables, or plots that explain the method or
   results.
5. Limitations: what the harness did not prove.
6. Conclusion: what can be reused.

## Quality Criteria

Extracted from `/home/masih/Desktop/f/papers/`. A generated report is not
acceptable until it passes all gates below.

1. Problem and contribution gate:
   - states the problem in one paragraph;
   - states the contribution in one paragraph;
   - explains why the contribution is different from prior work;
   - does not frame the project as generic "single vs multi-agent" comparison.

2. Literature gate:
   - compares the main related papers by role, method, and limitation;
   - includes the harness-related papers as method/evaluation context;
   - uses classic method papers as quality/style references, not as filler;
   - turns prior work into a clear gap for this seminar.

3. Method gate:
   - defines fixed inputs, allowed context, output target, and stop condition;
   - explains the harness loop simply enough for another agent to run it;
   - names what is measured and what is not measured;
   - avoids hidden human steering unless it is recorded as intervention.

4. Evidence/results gate:
   - reports concrete output artifacts or run outcomes;
   - compares against at least one baseline or reference process when possible;
   - separates agent-alone output from Masih-supervised output;
   - avoids precise-looking scores unless the scoring method is auditable.

5. Visual gate:
   - every figure/table has a job: architecture, workflow, comparison, evidence,
     failure mode, or result;
   - no decorative plots, dashboard screenshots, or unexplained charts;
   - every visual is referenced in nearby text and has a clear caption;
   - figures can be simple if they are exact and necessary.

6. Reproducibility gate:
   - a fresh agent can identify the inputs, run protocol, and expected output
     from this manual;
   - claims point to papers, local files, or clearly labeled future work;
   - git history is used for state, not a forest of checkpoint documents.

7. Limitations gate:
   - states what the harness does not prove;
   - states where human judgment remains necessary;
   - does not hide failed attempts or overclaim autonomy.

8. Writing and reference gate:
   - reads like a research paper, not an agent log;
   - uses precise section titles and stable terminology;
   - includes complete, readable references;
   - keeps appendices/process notes secondary to the main argument.

## Current Next Step

Start the first bounded paper run by drafting `REPORT.md` from this manual.

Definition of done for the next step:

- This manual correctly states that the experiment is harness creation.
- `REPORT.md` contains a first paper skeleton with section claims and source
  needs, not polished filler.
- No extra process files are created.
- `./init.sh` passes.
- Git status is clean after an explicit-path commit.
