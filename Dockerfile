FROM python:3.8

RUN apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get autoclean

RUN mkdir /PR
COPY . /PR/
WORKDIR /PR

RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py"]
CMD ["runserver"]
