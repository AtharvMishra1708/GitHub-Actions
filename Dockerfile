FROM python:3.13-slim

WORKDIR /app

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

COPY . .

RUN  pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn","--bind", "0.0.0.0:80","app:app"]