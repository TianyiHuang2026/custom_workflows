FROM python:3.9-slim

WORKDIR /app

COPY .github/scripts/todo.py /app/todo.py
COPY .github/scripts/todo-test.py /app/todo-test.py
COPY .github/scripts/update_index.sh /app/update_index.sh
COPY .github/scripts/entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh /app/update_index.sh

ENTRYPOINT ["/app/entrypoint.sh"]
