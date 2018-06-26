FROM tmaier/docker-compose:latest

LABEL author="ZRP Aplicacoes Informaticas LTDA <zrp@zrp.com.br>"
LABEL vendor="ZRP Aplicações Informáticas LTDA - ME"
LABEL license="GPLv3"

COPY --chown=root ecs-deploy /usr/bin/ecs-deploy

RUN apk --no-cache add ca-certificates curl bash jq py2-pip && \
    pip install awscli
