FROM python:3.8-slim

LABEL maintainer=quentin@sollet.fr

RUN useradd --create-home --shell /bin/bash appuser
USER appuser
ENV PATH="/home/appuser/.local/bin:${PATH}"

ENV GUNICORN_BIND_IP 0.0.0.0
ENV GUNICORN_BIND_PORT 8080
ENV GUNICORN_WORKER 1
ENV SECRET_KEY n(w2%2&$o&ff2b_gio#-mcjlwyv-usoc9h3#85y^5e4yd+g1wt
ENV ADMIN_USERNAME admin
ENV ADMIN_EMAIL admin@mail.com
ENV ADMIN_PASSWORD adminadmin

COPY --chown=appuser . /home/appuser/src
WORKDIR /home/appuser/src
RUN pip install --user gunicorn && pip install --user -r requirements.txt

ENTRYPOINT ["./run.sh"]
