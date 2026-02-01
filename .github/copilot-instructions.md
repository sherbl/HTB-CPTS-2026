# GitHub Copilot Instructions for HTB-CPTS-2026 🔧

## Quick context
- This repository is a *cyber operations knowledge base* (see `README.md`) used for labs, methodology notes, checklists, and post-mortems.
- Primary directories: `labs/`, `Methadology/`, `Checklists/`, `mistakes/`, `templates/`.

## High-level goals for edits ✅
- Keep contributions focused on reproducible documentation: short summary, concise steps, observed findings, and an explicit **"Why"** explaining decisions (per `README.md` rule: "Every success must explain 'why'").
- Do not introduce any real client data, credentials, or IPs. See `cyber-git-rules.md` for redaction rules: "no credential in plaintext", "no client names", "no real ips addresses".

## Where to make changes (patterns & examples) 🗂️
- Add lab writeups under `labs/HTB/` or `labs/Custom/` using `templates/writeup_template.md` or `templates/pt_report.md` as a scaffold.
- Add process or tool notes under `Methadology/` (note: directory currently spelled `Methadology`).
- Add small, prescriptive checklists under `Checklists/` (file names use mixed styles; follow existing file naming when editing).
- Add post-mortems to `mistakes/` with a clear **Problem → Action → Result → Lessons** structure.

## Content conventions & style 🔎
- Use Markdown only; keep files per-topic and < 1,000 lines where possible.
- Each doc should include these sections when relevant: **Summary**, **Steps/Commands**, **Findings**, **Why**, **Mitigation/Next Steps**.
- Cite tools/commands verbatim using backticks (e.g., `nmap -sC -sV -p- TARGET`).
- When adding commands, include expected output snippets or sample output in fenced code blocks.

## Safety & search checks (must-do before commit) ⚠️
- Run a quick grep for secrets and IPs before committing:
  - git grep -n -E "([0-9]{1,3}\.){3}[0-9]{1,3}|password|secret|apikey|api_key|token"
- Confirm all patient/client identifiers are redacted and IPs replaced with placeholders (e.g., `REDACTED_IP`).
- Add a short line in the PR description stating: "I verified redaction and sensitive content checks." 

## Suggested small tasks for AI agents 🤖
- Proofread and standardize spelling (e.g., consider raising an issue for renaming `Methadology` → `Methodology`).
- Populate empty templates with example content (use realistic, fully redacted examples).
- Convert repeated notes into concise checklists or templates to improve reuse.

## Collaboration & PR guidance ✍️
- Keep changes small and atomic; open PRs for anything non-trivial.
- Add a short note in the PR describing why the change helps (link back to README rules where helpful).
- If unsure about changing naming conventions or structural decisions, open an issue and propose it rather than changing repository layout unilaterally.

> If anything in these instructions is unclear or you'd like additional, more specific rules (naming, metadata, or templates), I can update this file—tell me which areas to expand. ✨
