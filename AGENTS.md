# MageBridge Core — Agent Guidelines

MageBridge Core is a Joomla 5/6 extension that bridges Joomla CMS with Magento/OpenMage.

Use `mise install` for the toolchain. Composer scripts define the build and quality checks; `composer bundle` builds the distributable package.

## Pointers

- Docker, live sync, and integration debugging: @.devcontainer/AGENTS.md
- Unit-test conventions and gold-standard tests: @tests/AGENTS.md
- Playwright E2E conventions and gold-standard tests: @e2e/AGENTS.md
- Joomla implementation patterns: @docs/agents/development-patterns.md
- Plugin service providers: @docs/agents/plugin-providers.md
- Joomla 5/6 path compatibility: @docs/agents/joomla-v6-compat.md
- Repository gotchas: @docs/agents/lessons-learned.md
- Issue tracker (GitHub Issues / `gh`): @docs/agents/issue-tracker.md
- Triage labels: @docs/agents/triage-labels.md
- Domain docs (single-context): @docs/agents/domain.md

## Project Constraint

Write code, PHPDoc, commits, and Markdown in English.

## Self-Reflection

- **Candidate**: Distill a non-obvious gotcha into ≤ 2 context-tagged bullets. Propose it before writing.
- **Promote**: On confirmation, put it where whoever would break it must already pass — enforce it (assert/type/test) when the fix is in hand, else a comment at that site, else an agent-facing doc (`docs/agents/<topic>.md`, else `docs/agents/lessons-learned.md`) with one `@path` line under Pointers. Never both.
- **Prune**: Drop entries once stale (obsolete version, now enforced, duplicated, or a transcript) — not by a fixed count.

## Claude Code Compatibility

`CLAUDE.md` is a symbolic link to `AGENTS.md`. Edit `AGENTS.md` directly.
