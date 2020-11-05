#!/bin/sh

cd ay_test
python manage.py migrate
gunicorn -w ${GUNICORN_WORKER} --bind=${GUNICORN_BIND_IP}:${GUNICORN_BIND_PORT} "ay_test.wsgi:application"
