#!/bin/sh
set -eu

cd /app

python /app/todo.py > /app/tasks.txt
python -m unittest -v /app/todo-test.py > /app/test_results.txt 2>&1

/app/update_index.sh

cat /app/tasks.txt
cat /app/test_results.txt

echo "Task Management workflow completed."
