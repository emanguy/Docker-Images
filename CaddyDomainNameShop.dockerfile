FROM caddy:2.11.2-builder-alpine AS builder

RUN --mount=type=cache,target=/go/pkg/mod \
    --mount=type=cache,target=/root/.cache/go-build \
    xcaddy build \
    --with github.com/caddyserver/nginx-adapter

FROM caddy:2.11.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
