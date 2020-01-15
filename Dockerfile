FROM alpine:3.10

RUN apk add --no-cache curl bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]