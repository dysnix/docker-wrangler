FROM alpine:3.15
ARG VERSION
RUN \
  cd /tmp && file=wrangler-${VERSION}-x86_64-unknown-linux-musl.tar.gz; \
  wget -q https://github.com/cloudflare/wrangler/releases/download/${VERSION}/$file && \
  tar xzvf $file && chmod 755 dist/wrangler && mv dist/wrangler /usr/local/bin/ && rm -rf /tmp/*
