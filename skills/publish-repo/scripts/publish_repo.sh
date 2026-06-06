#!/usr/bin/env bash
set -euo pipefail

owner=""
repo=""
visibility="public"
homepage=""
description=""
topics=""
remote_name="origin"

usage() {
  cat <<'USAGE'
Usage:
  publish_repo.sh --owner OWNER --repo REPO [options]

Options:
  --owner OWNER             GitHub owner or organization.
  --repo REPO               GitHub repository name.
  --visibility VISIBILITY   public, private, or internal. Default: public.
  --homepage URL            Repository homepage URL.
  --description TEXT        Repository description.
  --topics CSV              Comma-separated GitHub topics.
  --remote NAME             Git remote name. Default: origin.
  -h, --help                Show this help.

The script refuses dirty worktrees. Commit first, then publish.
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --owner)
      owner="${2:-}"
      shift 2
      ;;
    --repo)
      repo="${2:-}"
      shift 2
      ;;
    --visibility)
      visibility="${2:-}"
      shift 2
      ;;
    --homepage)
      homepage="${2:-}"
      shift 2
      ;;
    --description)
      description="${2:-}"
      shift 2
      ;;
    --topics)
      topics="${2:-}"
      shift 2
      ;;
    --remote)
      remote_name="${2:-}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Missing required command: $1" >&2
    exit 1
  fi
}

require_cmd git
require_cmd gh

if [[ -z "$owner" || -z "$repo" ]]; then
  echo "--owner and --repo are required." >&2
  usage >&2
  exit 2
fi

case "$visibility" in
  public|private|internal) ;;
  *)
    echo "--visibility must be public, private, or internal." >&2
    exit 2
    ;;
esac

git rev-parse --is-inside-work-tree >/dev/null

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Refusing to publish a dirty worktree. Commit or stash changes first." >&2
  git status --short >&2
  exit 1
fi

gh auth status >/dev/null

branch="$(git branch --show-current)"
if [[ -z "$branch" ]]; then
  echo "Cannot publish from a detached HEAD." >&2
  exit 1
fi

full_name="$owner/$repo"
target_url="https://github.com/$full_name.git"

if git remote get-url "$remote_name" >/dev/null 2>&1; then
  current_url="$(git remote get-url "$remote_name")"
  case "$current_url" in
    *github.com[:/]"$full_name".git|*github.com[:/]"$full_name")
      ;;
    *)
      echo "Remote '$remote_name' points to '$current_url', not '$target_url'." >&2
      exit 1
      ;;
  esac
else
  if gh repo view "$full_name" >/dev/null 2>&1; then
    git remote add "$remote_name" "$target_url"
  else
    create_args=(repo create "$full_name" "--$visibility" --source . --remote "$remote_name")
    if [[ -n "$description" ]]; then
      create_args+=(--description "$description")
    fi
    if [[ -n "$homepage" ]]; then
      create_args+=(--homepage "$homepage")
    fi
    gh "${create_args[@]}"
  fi
fi

git push -u "$remote_name" "$branch"

edit_args=(repo edit "$full_name")
if [[ -n "$description" ]]; then
  edit_args+=(--description "$description")
fi
if [[ -n "$homepage" ]]; then
  edit_args+=(--homepage "$homepage")
fi
if [[ ${#edit_args[@]} -gt 3 ]]; then
  gh "${edit_args[@]}"
fi

if [[ -n "$topics" ]]; then
  IFS=',' read -ra topic_array <<< "$topics"
  for raw_topic in "${topic_array[@]}"; do
    topic="$(echo "$raw_topic" | tr '[:upper:]' '[:lower:]' | tr -cd 'a-z0-9-')"
    if [[ -n "$topic" ]]; then
      gh repo edit "$full_name" --add-topic "$topic" >/dev/null
    fi
  done
fi

gh repo view "$full_name" --json nameWithOwner,url,homepageUrl,description,repositoryTopics
