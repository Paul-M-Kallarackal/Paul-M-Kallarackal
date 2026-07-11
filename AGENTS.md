# Profile README agent guide

This repository is the source for Paul M. Kallarackal's GitHub profile README.

## Update flow

When Paul asks to update the profile from recent Codex work:

1. Review the relevant Codex tasks and use their final outcomes, not unfinished plans.
2. Confirm repository, deployment, and pull-request URLs before adding them.
3. Add one concise dated entry inside the `SESSION_LOG_START` and `SESSION_LOG_END` markers, newest first.
4. Keep the README free of emoji and malformed encoding.
5. Run `./scripts/validate-readme.ps1`.
6. Commit the focused change and push it to GitHub. Use a pull request when the requested workflow or branch protections require one; otherwise a direct profile update to `main` is acceptable when Paul explicitly asks to publish it.

Keep evergreen profile content separate from the session log so future updates remain small and easy to review.
