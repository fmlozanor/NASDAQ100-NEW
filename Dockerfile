FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8050

CMD ["sh", "-c", "gunicorn app:server --bind 0.0.0.0:${PORT:-8050}"]
