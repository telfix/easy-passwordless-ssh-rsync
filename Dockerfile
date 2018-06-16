FROM alpine:3.7
LABEL maintainer "Herbert Rusznak - https://github.com/thelittlebug"
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
COPY files/entrypoint.sh /

RUN apk add --no-cache openssh rsync
