FROM python:3.11-slim

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y build-essential gcc && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app ./app

ENV PYTHONUNBUFFERED=1
EXPOSE 5000

CMD ["python", "-m", "app.app"]