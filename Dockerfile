FROM alpine
MAINTAINER Josh Kastang <josh.kastang@gmail.com>

ENV RIPME_VER 1.4.4

RUN set -xe \
    && apk add --no-cache ca-certificates \
			openjdk7-jre \
			wget \
    && mkdir /app \
    && wget "https://github.com/4pr0n/ripme/releases/download/$RIPME_VER/ripme.jar" -P /app

VOLUME /data
WORKDIR /data

ENTRYPOINT ["java", "-jar", "/app/ripme.jar"]
CMD ["--help"]
