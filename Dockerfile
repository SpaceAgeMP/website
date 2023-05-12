FROM jekyll/builder:4.0 AS builder

COPY --chown=1000:1000 . /srv/jekyll

RUN jekyll build --source src --destination dist


FROM caddy

COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=builder /srv/jekyll/dist /srv
