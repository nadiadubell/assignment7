FROM alpine:latest
RUN adduser -D -u 5000 collin
RUN deluser sync || true && adduser -D sync
RUN deluser nobody || true && adduser -D -u 65534 nobody
RUN mkdir -p /structure && chmod 777 /structure
RUN touch /structure/sync-work && chown sync:sync /structure/sync-work
RUN touch /structure/nobody-work && chown nobody:nobody /structure/nobody-work
