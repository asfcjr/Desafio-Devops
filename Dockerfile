FROM python:3.7
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=true
ENV PYTHONUNBUFFERED=true
COPY  /web/requirements.txt .
RUN pip install psycopg2-binary && pip install -r requirements.txt
COPY . .