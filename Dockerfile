FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

ENV NAME World

CMD ["python", "main.py"]