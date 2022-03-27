FROM python:alpine

ARG UID
ARG GID

RUN apk update \
    && apk add shadow sudo bash autoconf gcc g++ musl-dev make 
RUN apk add --virtual build-deps python3-dev \
    && apk add mariadb-dev mariadb-client gettext \
    && apk add libffi-dev jpeg-dev

RUN addgroup -g ${GID} app \ 
    && adduser -D -G app -s /bin/bash -u ${UID} app \
    && echo "ALL ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ADD root /
RUN chmod a+x /usr/local/bin/entrypoint* 

RUN pip install debugpy aiohttp

USER app

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]