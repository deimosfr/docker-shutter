FROM debian:stable

RUN apt-get update && \
    apt-get install -y --no-install-recommends shutter && \
    apt-get clean && \
    rm -Rf /var/cache/apt/

WORKDIR /data

CMD shutter
