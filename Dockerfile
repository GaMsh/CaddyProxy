FROM caddy:2.10-builder AS builder

RUN xcaddy build \
    --with github.com/ueffel/caddy-brotli \
    --with github.com/epicagency/caddy-expires

FROM caddy:2.10

COPY --from=builder /usr/bin/caddy /usr/bin/caddy