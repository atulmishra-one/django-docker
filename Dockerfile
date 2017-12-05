FROM python:2
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /srv/web
WORKDIR /srv/web
ADD /web/requirements.txt /srv/web/
RUN pip install -r requirements.txt

ADD . /srv/

EXPOSE 8000
