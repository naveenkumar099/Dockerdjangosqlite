FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD . /code/

RUN pip install -r requirements.txt

Expose 8000

STOPSIGNAL SIGINT

ENTRYPOINT ["python","manage.py"]

CMD ["runserver","0.0.0.0:8000"]




