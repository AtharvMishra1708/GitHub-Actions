FROM python:3.13-slim

WORKDIR /app

# Install dependencies first
COPY requirements.txt .
RUN pip install -r requirements.txt

# Explicitly copy files and directories to lock in the layout
COPY app.py .
COPY templates/ ./templates/

CMD ["python", "app.py"]
