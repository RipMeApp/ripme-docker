FROM alpine
MAINTAINER cyian-1756

ENV RIPME_VER 1.7.78

RUN set -xe \
    && apk add --no-cache ca-certificates \
			openjdk8-jre \
			wget \
    && mkdir /app \
    && wget "https://github.com/RipMeApp/ripme/releases/download/$RIPME_VER/ripme.jar" -P /app

VOLUME /data
WORKDIR /data

ENTRYPOINT ["java", "-jar", "/app/ripme.jar"]
CMD ["--help"]
