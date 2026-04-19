FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY pyproject.toml README.md /app/
COPY novaforge /app/novaforge
COPY tests /app/tests
COPY .env.example /app/.env.example
RUN python -m pip install --upgrade pip && \
    python -m pip install -e .
ENTRYPOINT ["novaforge"]
CMD ["doctor"]