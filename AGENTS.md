# Profile README agent flow

This repository is the GitHub profile README for `Paul-M-Kallarackal`.

## Default update flow

When Paul asks to update, refresh, or sync the README:

1. Read today's relevant Codex tasks and summarize completed outcomes, not just initial prompts.
2. Verify public project, deployment, pull request, and source URLs before adding them.
3. Clearly distinguish shipped work from local or pending work.
4. Update only the content between `SESSION_LOG_START` and `SESSION_LOG_END` for session-log requests. Add the newest date first and preserve useful older entries.
5. Keep the README free of emoji and corrupted encoding. Badges and ordinary Markdown images are allowed.
6. Run the checks in `scripts/check-readme.ps1`.
7. Review `git diff`, commit only intended README-repository files, and push to `origin/main` unless Paul explicitly requests a PR.

## Writing rules

- Use concise, outcome-focused language.
- Prefer durable public links to GitHub repositories, merged PRs, deployed products, Devpost entries, and papers.
- Do not expose private Codex task links, local filesystem paths, unpublished credentials, or private project details.
- Do not describe local work as shipped or deployed.
- Keep sections easy to extend; avoid generated tables or layouts that require broad rewrites.
