FROM python:3.11

ENV PYTHONUNBUFFERED 1
RUN mkdir /src
WORKDIR /src
ADD requirements.txt /src/
RUN pip install -r requirements.txt
ADD . /src/

CMD python3 manage.py runserver 0.0.0.0:8000