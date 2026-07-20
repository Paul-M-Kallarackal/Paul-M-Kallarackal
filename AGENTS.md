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

## Scheduled run discovery

For scheduled or automation-driven runs, do the evidence pass with a compact command set before editing.

Start from the previous successful run instead of rediscovering the entire Codex session store each time:

1. Read `C:\Users\loqpm\.codex\automations\curate-github-build-in-public-readme\memory.md` first.
2. Reuse the last run's `Evidence used` section as the default search scope: the same recent session JSONL files, repos, pull requests, and public URLs should be checked first.
3. Only widen beyond that last-known-good scope if:
   - the newest README session-log entry is newer than the memory entry,
   - the reused session files no longer explain recent work,
   - or verification shows a new public change that the prior scope missed.
4. Avoid broad repo-wide or year-wide session scans unless the memory-guided pass fails to explain the new activity.

Then use this command order:

1. Sync and verify the target repo:
   - `git fetch origin`
   - `git pull --ff-only origin main`
   - `git remote -v`
   - `git status --short --branch`
2. Find the last published README cutoff:
   - `Select-String -Path README.md -Pattern 'SESSION_LOG_START|SESSION_LOG_END|^### ' -Context 0,2`
3. Reuse the last few discovery inputs from memory:
   - open the exact session JSONL files named in the previous run's `Evidence used` note
   - rerun the exact `gh pr view`, `curl.exe -I -L -s`, and `git log --since=...` checks that previously established the claim
4. If the memory-guided pass is insufficient, discover only nearby newer Codex work:
   - `Get-Content C:\Users\loqpm\.codex\session_index.jsonl -Tail 80`
   - `Get-ChildItem -Recurse C:\Users\loqpm\.codex\sessions\2026\07 | Sort-Object LastWriteTime -Descending | Select-Object -First 12 FullName,LastWriteTime`
   - `rg -n 'phase":"final_answer|mergedAt|deployed|production passed' <only-the-few-recent-session-files-you-just-identified>`
5. Verify public evidence before adding claims:
   - `gh pr view <number> --repo <owner/repo> --json state,mergedAt,url,mergeCommit,title`
   - `curl.exe -I -L -s <public-url>`
   - `git -C <repo-path> log --since="<cutoff-date>" --pretty=format:"%h %ad %s" --date=iso --all -n 10`
6. Only then update the README session-log block and run `powershell -ExecutionPolicy Bypass -File .\scripts\check-readme.ps1`.

## Writing rules

- Use concise, outcome-focused language.
- Prefer durable public links to GitHub repositories, merged PRs, deployed products, Devpost entries, and papers.
- Do not expose private Codex task links, local filesystem paths, unpublished credentials, or private project details.
- Do not describe local work as shipped or deployed.
- Keep sections easy to extend; avoid generated tables or layouts that require broad rewrites.
