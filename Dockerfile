FROM python:3
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /ApiRestTesina
WORKDIR /ApiRestTesina
COPY requirements.txt /ApiRestTesina/
RUN pip install -r requirements.txt
COPY . /ApiRestTesina/
CMD python manage.py runserver --settings=settings.production 0.0.0.0:8080
