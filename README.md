# claude-code-bash-history

A [Claude Code](https://docs.anthropic.com/en/docs/claude-code) plugin that saves all Bash tool commands to a `.bash_history` file in the project's working directory. This lets you review and reuse commands that Claude ran during a session.

## Requirements

- `jq` must be installed

## Installation

```bash
claude plugin install d3dave/claude-code-bash-history --scope user
```

## How It Works

A `PostToolUse` hook triggers on every `Bash` tool invocation. The hook script reads the tool's JSON input, extracts the working directory, command, and description, then appends the command to `$cwd/.bash_history` with the description as a comment.
