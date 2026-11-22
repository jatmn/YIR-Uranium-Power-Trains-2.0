# Pullfrog

For manual commands, **jatmn** posts a new top-level issue or PR comment whose
first line begins with `@pullfrog` followed by an instruction.

## Automatic reviews

Pullfrog reviews new PRs, drafts, and updated diffs in this public repository
when GitHub identifies `jatmn` as the PR author. The person pushing an update
can be a different account. The GitHub App dispatches the workflow on the
default branch and the author check must pass before the agent starts.
In Pullfrog settings, enable PR reviews, draft reviews, and re-reviews on new
commits, and disable managed mentions and external-contributor reviews.
Use a fresh owner-authored draft and push an update after the workflow is
merged to verify live automatic dispatch.
