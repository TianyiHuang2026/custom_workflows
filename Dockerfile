
FROM python:3.9-slim

WORKDIR /app

COPY .github/scripts/frequency.py /app/frequency.py
COPY .github/scripts/entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
