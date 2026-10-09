#!/bin/sh
set -eu

TASK_FILE="/app/tasks.txt"
TEST_FILE="/app/test_results.txt"
OUTPUT_FILE="/app/index.html"

{
    cat <<'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Task Management</title>
</head>
<body>
  <h1>Task Management</h1>
  <h2>Tasks</h2>
  <pre>
HTML

    if [ -f "$TASK_FILE" ]; then
        cat "$TASK_FILE"
    else
        echo "No task output available."
    fi

    cat <<'HTML'
  </pre>
  <h2>Test Results</h2>
  <pre>
HTML

    if [ -f "$TEST_FILE" ]; then
        cat "$TEST_FILE"
    else
        echo "No test results available."
    fi

    cat <<'HTML'
  </pre>
</body>
</html>
HTML
} > "$OUTPUT_FILE"

echo "Updated $OUTPUT_FILE"
