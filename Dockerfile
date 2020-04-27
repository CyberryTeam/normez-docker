FROM ruby:2.7-alpine

ARG IMAGE_CREATION
ARG IMAGE_VERSION

LABEL fr.cyberry.image.created=${IMAGE_CREATION}
LABEL fr.cyberry.image.authors="Cyberry Team <team@cyberry.fr> (@CyberryTeam)"
LABEL fr.cyberry.image.url="https://hub.docker.com/r/cyberryteam/normez-docker"
LABEL fr.cyberry.image.source="https://github.com/CyberryTeam/normez-docker"
LABEL fr.cyberry.image.version=${IMAGE_VERSION}
LABEL fr.cyberry.image.vendor="Cyberry"
LABEL fr.cyberry.image.licenses="MIT"
LABEL fr.cyberry.image.title="NormEZ Docker"
LABEL fr.cyberry.image.description="Docker image for NormEZ"

ENV FILES_DIRECTORY="/files"
ENV NORMEZ_DIRECTORY="/normez"
ENV NORMEZ_REPOSITORY="https://github.com/ronanboiteau/NormEZ"

RUN apk add --no-cache \
    curl \
    git

WORKDIR ${NORMEZ_DIRECTORY}
RUN git clone ${NORMEZ_REPOSITORY} .
COPY entrypoint.sh .

ENTRYPOINT ["sh", "entrypoint.sh"]
