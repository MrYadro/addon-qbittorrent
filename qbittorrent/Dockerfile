ARG BUILD_FROM=hassioaddons/ubuntu-base:4.0.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base system
ARG BUILD_ARCH=amd64

RUN \
    apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get update \
    && add-apt-repository ppa:qbittorrent-team/qbittorrent-stable \
    && apt-get update \
    && apt-get purge --auto-remove software-properties-common \
    && apt-get install -y \
       qbittorrent-nox=4.1.9.99~201911020617-6737-5d98721~ubuntu18.04.1

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

LABEL \
    io.hass.name="qBittorrent" \
    io.hass.description="A BitTorrent client in Qt" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Yadroslav Yadrishnikov <yadrishnikovyaroslav@gmail.com>" \
    org.label-schema.description="A BitTorrent client in Qt" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="qBittorrent" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://addons.community" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-example/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-example" \
    org.label-schema.vendor="Community Hass.io Addons"
