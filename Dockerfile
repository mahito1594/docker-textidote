FROM adoptopenjdk/openjdk8:alpine-slim

LABEL maintainer="Mahito TANNO <pb94.mahito@gmail.com>"

ARG VERSION="0.8.1"
ARG DOWNLOAD_URL="https://github.com/sylvainhalle/textidote/releases/download/v${VERSION}/textidote.jar"

WORKDIR /tmp

RUN wget -q ${DOWNLOAD_URL}

WORKDIR /work

ENTRYPOINT ["java", "-jar", "/tmp/textidote.jar"]
CMD ["--help"]
