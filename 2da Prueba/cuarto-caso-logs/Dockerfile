FROM alpine:3.20

RUN apk add --no-cache \
    gzip \
    coreutils \
    tzdata

WORKDIR /app

COPY generator.sh /app/generator.sh
COPY rotate.sh /app/rotate.sh
COPY compress.sh /app/compress.sh
COPY clean.sh /app/clean.sh

RUN chmod +x /app/*.sh

RUN mkdir -p /var/log/app

CMD ["sh"]