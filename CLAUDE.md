# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A Claude Code plugin that saves all Bash tool commands to a `.bash_history` file in the project's working directory. This lets users review and reuse commands that Claude ran during a session.

## Plugin Structure

- `.claude-plugin/plugin.json` — Plugin manifest (name, version, description)
- `hooks/hooks.json` — PostToolUse hook config that triggers on every `Bash` tool invocation
- `scripts/save_to_history.sh` — Reads the hook's JSON input from stdin (via `jq`), extracts `cwd`, `command`, and `description`, then appends to `$cwd/.bash_history` with the description as a comment

## Requirements

- `jq` must be installed

## Installation

Via the marketplace:

```
/plugin marketplace add d3dave/claude-code-plugins
/plugin install bash-history@d3dave
```

For testing locally:

```bash
claude --plugin-dir /path/to/claude-code-bash-history
```
