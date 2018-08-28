FROM kennethreitz/pipenv 

ADD . /app

RUN pip install pipenv

#RUN pipenv install

EXPOSE 80

ENV NAME World

CMD ["python3", "app.py"]
