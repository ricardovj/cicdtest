FROM python:3.11-slim

WORKDIR /app

# Install dependencies (including pytest)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt pytest

# Copy application and tests
COPY app/ ./app
COPY tests/ ./tests

EXPOSE 8080

CMD ["python", "app/main.py"]
