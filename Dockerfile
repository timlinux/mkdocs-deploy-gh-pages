FROM squidfunk/mkdocs-material:9.0.6
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

COPY action.sh /action.sh

RUN apk add --no-cache bash build-base && chmod +x /action.sh

WORKDIR ${GITHUB_WORKSPACE}/${BASE_DIRECTORY}

ENTRYPOINT ["/action.sh"]
