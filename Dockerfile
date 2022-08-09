FROM python:3.7
WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY  /web/requirements.txt .
RUN pip install psycopg2-binary && pip install -r requirements.txt
COPY . .