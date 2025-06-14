FROM caddy:latest

LABEL maintainer="The greatest capitan"
LABEL description="CDN server for static assets"

COPY Caddyfile /etc/caddy/Caddyfile

WORKDIR /srv/assets

EXPOSE 80