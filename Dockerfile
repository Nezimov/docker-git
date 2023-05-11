FROM python:3.8

RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean

RUN mkdir /web_django
COPY . /web_django/
WORKDIR /web_django

RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver"]
