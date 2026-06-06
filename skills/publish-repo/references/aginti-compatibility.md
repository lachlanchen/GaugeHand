# AgInTi Compatibility Contract

Use this reference when an AgInTi agent needs to publish a repository.

## Inputs

- `repo_root`: absolute path to the local git repository.
- `owner`: GitHub owner or organization.
- `repo`: GitHub repository name.
- `visibility`: `public`, `private`, or `internal`.
- `homepage`: optional URL.
- `description`: short GitHub description.
- `topics`: comma-separated GitHub topics.

## Required Precondition

The agent must leave the worktree clean before running the publish script:

```bash
git status --short --branch
```

If there are changes, the agent must either commit them or stop and ask for scope.

## Deterministic Publish Command

```bash
/path/to/LazySkills/skills/publish-repo/scripts/publish_repo.sh \
  --owner "$owner" \
  --repo "$repo" \
  --visibility "$visibility" \
  --homepage "$homepage" \
  --description "$description" \
  --topics "$topics"
```

When the skill is vendored inside the project repository, the local path may instead be `skills/publish-repo/scripts/publish_repo.sh`.

## Success Criteria

- The repository exists on GitHub.
- `origin` points to that repository.
- The current branch is pushed with upstream tracking.
- Homepage, description, and topics are set.
- `git status --short --branch` is clean after publishing.

## Failure Policy

- Missing `gh`: stop and report.
- Unauthenticated `gh`: stop and ask the user to run `gh auth login`.
- Dirty worktree: stop and ask for commit scope.
- Existing remote mismatch: stop and report both the existing remote and requested target.
