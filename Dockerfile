FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /opt/docker/TestApp/app/static
COPY ./requirements.txt /opt/docker/TestApp/requirements.txt
RUN pip install -r /opt/docker/TestApp/requirements.txt

