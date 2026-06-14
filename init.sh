#!/usr/bin/env bash
set -euo pipefail

ROOT="/home/masih/Desktop/u/seminar"
cd "$ROOT"

echo "root: $PWD"
echo

echo "git status:"
git status --short --branch
echo

echo "required fixed inputs:"
for path in \
  manual.md \
  seminar.pdf \
  seminar-filled-1.png \
  seminar-filled-2.png \
  seminar-filled-3.png \
  /home/masih/Desktop/f/papers \
  /home/masih/Desktop/f/repos/autoresearch-master/program.md \
  /home/masih/.codex/skills/harness-eng/SKILL.md
do
  test -e "$path"
  echo "ok $path"
done

echo
echo "next artifact:"
if [ -e REPORT.md ]; then
  echo "ok REPORT.md exists"
else
  echo "pending REPORT.md"
fi
