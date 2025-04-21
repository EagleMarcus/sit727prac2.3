# Dockerfile
FROM python:3.12

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

# Expose port 8001
EXPOSE 8001

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
