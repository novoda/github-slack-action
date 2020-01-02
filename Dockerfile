FROM alpine:3.10
RUN apk add --no-cache curl bash
CMD ["/bin/sh"]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]