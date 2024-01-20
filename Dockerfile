FROM python:3.6-alpine

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
ENV EXCLUDE_URLS='.*github.com'

CMD python3 -u crawler/crawler.py $URL
