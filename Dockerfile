FROM jekyll/builder:3.8 AS builder

COPY . /srv/jekyll

RUN jekyll build --source src --destination dist


FROM caddy

COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=builder /srv/jekyll/dist /srv
