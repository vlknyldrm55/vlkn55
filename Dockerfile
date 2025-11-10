FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .
COPY index.html .   # ← Bunu ekle

CMD ["gunicorn", "app:app", "-w", "4", "-k", "gevent", "--bind", "0.0.0.0:7860"]
