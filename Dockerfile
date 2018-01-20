FROM tmaier/docker-compose:latest

LABEL author="ZRP Aplicações Informáticas LTDA - ME <zrp@zrp.com.br>"

COPY --chown=root ecs-deploy /usr/bin/ecs-deploy

RUN pip install awscli && \
    apk update && \
    apk add jq bash

