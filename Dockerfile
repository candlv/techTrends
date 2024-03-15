FROM python:3.8-slim-buster
EXPOSE 3111/tcp

COPY techtrends/requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY ./techtrends .

RUN python init_db.py

CMD ["python3", "app.py"]