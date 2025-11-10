FROM python:3.12-slim

WORKDIR /app

COPY . .   # ← tüm dosyaları kopyalar

RUN pip install -r requirements.txt

CMD ["gunicorn", "app:app", "-w", "4", "-k", "gevent", "--bind", "0.0.0.0:7860"]

