FROM python:3.10

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y tesseract-ocr && \
    apt-get clean

RUN pip install -r requirements.txt

ENV NAME World

CMD ["python", "main.py"]