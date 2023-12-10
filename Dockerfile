FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN apt update -y && apt -y install gcc
RUN pip install  -r requirements.txt
COPY . /app/
EXPOSE 5000

CMD ["python", "app.py"]
