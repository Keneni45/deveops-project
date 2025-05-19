FROM python:3.12-slim-bookworm
WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

EXPOSE 5000


CMD ["gunicorn", "--bind", "0.0.0.0:5000", "run:app"]