
FROM golang:1.16-alpine3.13

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add build-base && \
    apk add github-cli gh-cli && \ 
    cd gh-cli && \
    make && \
    mv ./bin/gh /usr/local/bin/

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
