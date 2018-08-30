FROM python:3.6-slim

WORKDIR /app

ADD . /app

RUN rm -rf .venv

RUN pip install pipenv

RUN pipenv install

EXPOSE 80

ENV NAME World

CMD ["pipenv", "run", "python", "app.py"]
