#!/bin/bash
input=$(cat)
cwd=$(echo "$input" | jq -r '.cwd')
command=$(echo "$input" | jq -r '.tool_input.command')
description=$(echo "$input" | jq -r '.tool_input.description')

history_file="$cwd/.bash_history"
cat >>"$history_file" <<END
# ${description}
${command}
END
