---
name: publish-repo
description: Publish a local git repository to GitHub from Codex or AgInTi, including README/resource checks, safe commit discipline, remote creation, push, homepage, description, and topics.
---

# Publish Repo

Use this skill when the user asks to publish a local repository to GitHub, add repository metadata, set topics/homepage, or prepare a repo for public release from Codex or AgInTi.

## Core Rules

- Read the repo's `AGENTS.md` first.
- Never revert unrelated user changes.
- Inspect `git status --short --branch` before staging.
- Stage only intended files unless the user explicitly asks for all changes.
- Commit before publishing when the repo has local changes.
- Do not publish a dirty worktree. The helper script refuses dirty trees by default.
- Use `gh` for GitHub repo creation, metadata, topics, and push validation.
- Prefer public visibility only when the user asks to publish publicly or gives no privacy constraint.

## Workflow

1. Audit the repository:
   - `git status --short --branch`
   - `git remote -v`
   - `gh auth status`
   - read `README.md`, `.gitignore`, and `AGENTS.md` if present.
2. Prepare public-facing resources:
   - polished `README.md`;
   - i18n README files when requested;
   - banner/logo assets when useful;
   - resource map to papers, docs, references, demos, scripts, or skills.
3. Validate local content:
   - run relevant build/test commands;
   - verify links and file paths with `rg`/`find`;
   - compile papers if the repo contains LaTeX and the change affects it.
4. Commit intentionally:
   - use a concise imperative message;
   - include only files in scope.
5. Publish:
   - run `scripts/publish_repo.sh` from this skill, or manually run the same `gh` steps.
6. Verify:
   - `git status --short --branch`;
   - `gh repo view OWNER/REPO --json nameWithOwner,url,homepageUrl,description,repositoryTopics`;
   - open or report the final GitHub URL.

## Helper Script

If this skill is vendored inside the target repository, run from that repository root:

```bash
skills/publish-repo/scripts/publish_repo.sh \
  --owner lachlanchen \
  --repo GaugeHand \
  --visibility public \
  --homepage https://lazying.art \
  --description "GaugeHand: a lockable contour-field robotic hand concept for dense-contact grasping" \
  --topics "robotics,robotic-hand,contour-gauge,pin-array,dense-contact,tactile-sensing,soft-robotics,gripper,manipulation,hardware-research,lazying-art"
```

If installed as a Codex user skill or loaded from LazySkills, run the script by absolute path while keeping the working directory at the repository root:

```bash
/home/lachlan/ProjectsLFS/LazySkills/skills/publish-repo/scripts/publish_repo.sh \
  --owner lachlanchen \
  --repo GaugeHand \
  --visibility public \
  --homepage https://lazying.art \
  --description "GaugeHand: a lockable contour-field robotic hand concept for dense-contact grasping" \
  --topics "robotics,robotic-hand,contour-gauge,pin-array,dense-contact,tactile-sensing,soft-robotics,gripper,manipulation,hardware-research,lazying-art"
```

The script:

- requires `git` and `gh`;
- checks `gh auth status`;
- refuses to run if the worktree has uncommitted changes;
- creates the GitHub repo if it does not exist;
- adds `origin` if missing;
- pushes the current branch;
- sets homepage, description, and topics.

## Codex Notes

Codex should do the editorial work and commit itself, then use the script for the GitHub-specific publishing step. If `gh` is not authenticated, stop and tell the user to run `gh auth login`.

## AgInTi Notes

AgInTi can call the same script as a deterministic publish step after its planning/editing phase. See `references/aginti-compatibility.md` for a compact task contract that AgInTi agents can reuse.

## Final Response Checklist

Report:

- GitHub URL;
- branch pushed;
- commit hash;
- metadata applied: homepage, description, topics;
- validation commands run;
- any blocker, such as missing auth or repo visibility failure.
