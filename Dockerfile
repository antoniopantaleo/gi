FROM alpine
LABEL version="1.0.0"
LABEL maintainer="Antonio Pantaleo <antonio_pantaleo@icloud.com>"
RUN apk update && apk upgrade
RUN apk add curl

WORKDIR /bin
COPY gi .

RUN chmod 111 gi

WORKDIR /gi
ENTRYPOINT ["sh", "/bin/gi"]
