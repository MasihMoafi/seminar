# Handoff for Next Agent

Date: 2026-06-08
Workspace: `/home/masih/Desktop/u/seminar`

## Read This First

Masih wants this project restarted from a clean, simple foundation. A previous
agentic attempt failed because it over-produced checkpoint files, dashboards,
scores, plots, and process documents while losing the actual research objective.
Do not repeat that pattern.

The active project is **not** to write a generic agent-workflow survey. It is
not mainly "single-agent versus multi-agent." It is not to create many
checkpoints. It is not to make an HTML dashboard.

The experiment is:

> Can we design a minimal harness that lets an agent produce a graduate-level
> research paper package from Masih's submitted seminar topic, with academic
> structure, useful visuals, evidence, limitations, and references on par with
> the papers in `/home/masih/Desktop/f/papers/`?

The harness is the research object. The paper that the harness produces is the
artifact used to judge whether the harness works.

Masih may later write thesis Chapter 1 and Chapter 2 to explain this experiment,
but those thesis chapters are not the experiment itself.

## User Requirements and Taste

Masih cares about output quality, repeatability, reusability, and verifiability.
He strongly dislikes process sprawl that makes the project harder to inspect.

Important user corrections from the previous attempt:

- The main focus is **output quality**, not "single vs multi-agent."
- The experiment is **this workflow**, not generic workflows.
- The quality bar is the real paper corpus in `/home/masih/Desktop/f/papers/`.
- The sensor-fault project is a private comparison/reference case, not the
  graduate quality bar.
- Karpathy/autoresearch is the workflow-shape reference, not a topic/content
  reference.
- Do not create decorative plots, fake scores, dashboards, or checkpoint forests.
- If a file does not directly help produce or evaluate the paper, do not create
  it.
- Simplicity is not optional. The coding-guideline idea is:
  "simplicity is the ultimate sophistication." Smaller equal-quality artifacts
  are better than complex ones.

Tone/working style:

- Keep routine replies short.
- Use git.
- Never use `git add -A`; stage explicit paths only.
- Do not delete or touch files outside this repo unless explicitly asked.
- Do not touch `/home/masih/Desktop/u/pr/sensor_fault_research`.
- Ask before destructive or broad changes.

## Current Repository State

The repo has been reset to a minimal state. Current committed HEAD before this
handoff was:

```text
0b04da3 Add minimal paper harness run protocol
badc46d Extract graduate paper quality gate
17dfe9a Set first harness task to paper criteria extraction
645051b Clarify seminar harness objective
293debb Reset seminar project to minimal harness
```

Current files in the project root:

```text
init.sh
manual.md
seminar.pdf
seminar-filled-1.png
seminar-filled-2.png
seminar-filled-3.png
handoff.md
```

The previous failed v1 artifacts were deleted from this repo:

```text
REPORT.*
SHORT_REPORT.*
runs/
figures/
supervisor/
scripts/
MANAGER.md
WAKEUP.md
program.md
.ES/
```

No tag was created because Masih said no tag was needed.

## Fixed Inputs

These are the fixed inputs for the new harness:

- Submitted topic: `/home/masih/Desktop/u/seminar/seminar.pdf`
- Rendered topic pages:
  - `/home/masih/Desktop/u/seminar/seminar-filled-1.png`
  - `/home/masih/Desktop/u/seminar/seminar-filled-2.png`
  - `/home/masih/Desktop/u/seminar/seminar-filled-3.png`
- Paper-quality corpus: `/home/masih/Desktop/f/papers/`
- Karpathy/autoresearch reference:
  `/home/masih/Desktop/f/repos/autoresearch-master/program.md`
- Harness engineering skill:
  `/home/masih/.codex/skills/harness-eng/SKILL.md`
- Eval harness skill, available but not currently wired in:
  `/home/masih/.codex/skills/eval-harness/SKILL.md`
- Sensor-fault project, private comparison/reference only:
  `/home/masih/Desktop/u/pr/sensor_fault_research`

## Meaning of Each Reference

### `/home/masih/Desktop/f/papers/`

This is the main quality bar. It contains real papers such as Transformer,
U-Net, ResNet, Inception/GoogLeNet, ViT, Adam, Xavier initialization, harness
papers, KV-cache survey, and others.

Use these to extract what graduate-level/publishable research papers do:

- concise abstract with problem, contribution, and evidence;
- introduction that motivates a real gap;
- related work that compares prior work instead of listing it;
- method section with enough detail to reproduce or understand the new object;
- figures/tables that carry information;
- result/evidence sections tied to tasks, baselines, or artifacts;
- limitations that bound the claim;
- complete references.

### Karpathy/autoresearch

Use this as a workflow shape reference only:

- fixed world;
- one control surface;
- one output target;
- one metric or quality gate;
- keep/discard loop;
- simplicity criterion.

Do not copy the ML training setup, `val_bpb`, or infinite loop literally. This
seminar needs a bounded paper-production harness, not GPU experiments.

### `harness-eng`

Useful concepts:

- make agent work legible;
- use short control files, not giant manuals;
- every harness component must earn its keep;
- prefer mechanical checks when possible;
- do not scatter duplicate instructions.

Do not import all its templates. For this project, default to only:

- `manual.md`;
- `init.sh`;
- `REPORT.md` when the first paper run begins.

### `eval-harness`

It exists and can test observable agent behavior with bait prompts. Do **not**
wire it into this project yet. It adds complexity before the paper-quality
target is stable.

Use it only later if agents repeatedly violate the manual in observable ways
such as creating dashboards, fake scores, checkpoint forests, or hallucinated
sources.

### Sensor-Fault Project

Masih made the sensor-fault project manually with AI assistance, supervision,
and iterative improvements. It can be used as a comparison case:

- supervised AI + Masih steering versus mostly agent-alone harness output;
- artifact discipline and review expectations;
- reminder that good work required iteration.

It is not itself the graduate-level quality bar.

Do not copy its topic unless Masih explicitly asks. Do not modify it.

## Current `manual.md` Summary

The manual currently states:

- Objective: create a minimal harness that can produce a graduate-level research
  paper from the submitted seminar topic.
- The experiment is the harness.
- Fixed inputs are the topic PDF/images, papers directory, autoresearch,
  harness-eng, and sensor-fault as private comparison.
- Rules: simplicity, small control surface, git, no checkpoint forests, no fake
  dashboards/scores/plots, every claim traceable.
- Minimal run protocol: setup, allowed editable surface, paper-generation loop,
  keep/discard rule, evaluation output, stop conditions.
- Observed paper features extracted from the corpus.
- Quality gates:
  1. problem and contribution;
  2. literature;
  3. method;
  4. evidence/results;
  5. visuals;
  6. reproducibility;
  7. limitations;
  8. writing and references.
- Current next step: create `REPORT.md` as a first bounded paper skeleton with
  section claims and source needs.

## Important Distinction

Masih corrected us several times:

- Chapter 1 and Chapter 2 are for a thesis/report that may later describe the
  experiment.
- The experiment itself is not "write Chapter 1 and Chapter 2."
- The experiment is the harness that should produce a graduate-level paper with
  academic visuals and all required research-paper parts.

So the next agent should not drift into "normal thesis chapter writing" without
preserving the harness experiment framing.

## What Failed in V1

The previous attempt produced:

- many checkpoints;
- many run files;
- a dashboard;
- plots and figures that Masih judged wrong/useless;
- a report that looked like a final product but was at best a failed experiment;
- scores that Masih did not trust;
- too much process and too little academic substance.

Masih explicitly said this cannot be viewed as final-cut. Treat v1 as a
negative lesson.

Do not repeat:

- checkpoint files as progress theater;
- score-centered work;
- dashboard-first verification;
- decorative or wrong plots;
- vague "agent autonomy" claims;
- broad multi-agent claims;
- making Masih read process files to understand the project.

## Current Next Action

Create `REPORT.md` as the first bounded paper skeleton.

This is not yet a polished paper. It should be a structured skeleton that proves
the harness can start the right paper, with:

- title;
- abstract placeholder with intended claim;
- section list;
- for each section:
  - one-sentence section claim;
  - sources needed;
  - local artifacts needed;
  - what visual/table, if any, would be justified;
  - quality gate(s) it must satisfy.

Do not create:

- `runs/`;
- `figures/`;
- `supervisor/`;
- `REPORT.html`;
- `REPORT.pdf`;
- extra rubrics;
- extra handoff/manager files.

Only create `REPORT.md` unless Masih explicitly asks for rendered output.

## Suggested `REPORT.md` Skeleton

Use something close to this, but adapt after reading `manual.md` and the topic:

```markdown
# <working title>

## Abstract

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 1. Introduction

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 2. Related Work

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 3. Method: Minimal Paper-Production Harness

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 4. Evaluation Design

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 5. Expected Evidence and Results

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 6. Limitations

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## 7. Conclusion

Section claim:
Sources needed:
Artifact needs:
Visual/table needs:
Quality gates:

## References
```

## Verification

Before and after edits:

```bash
cd /home/masih/Desktop/u/seminar
git status --short --branch
./init.sh
```

After creating `REPORT.md`:

```bash
test -f REPORT.md
rg -n "Section claim:|Sources needed:|Quality gates:" REPORT.md
git diff --check -- REPORT.md manual.md init.sh handoff.md
```

Then stage explicit paths only:

```bash
git add REPORT.md
git commit -m "Add first bounded paper skeleton"
```

If this handoff is modified, stage `handoff.md` explicitly too.

## Expected Final State After Next Step

The repo should contain:

```text
init.sh
manual.md
handoff.md
seminar.pdf
seminar-filled-1.png
seminar-filled-2.png
seminar-filled-3.png
REPORT.md
```

Git should be clean after a commit.

## Stop Conditions for Next Agent

Stop and ask Masih if:

- the topic cannot be read from the PDF/images;
- the intended seminar topic appears different from the manual;
- deciding the exact paper language or professor/course expectation is needed;
- you feel tempted to create process files to manage uncertainty;
- you want to create figures before the report skeleton identifies a justified
  visual.

## Minimal Philosophy

The right move is boring and strict:

1. Read the manual.
2. Read the topic.
3. Sample only the papers needed for the skeleton.
4. Create `REPORT.md`.
5. Verify.
6. Commit.
7. Stop.

No flourish. No dashboard. No fake confidence. The harness should make the
paper better, not make the repository busier.
