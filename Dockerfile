FROM ubuntu:18.04

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

ENV GROUP eka

RUN groupadd -r "${GROUP}"

WORKDIR /opt

# Environment variables for golang
ENV APPLICATION_SERVER_EXEC=/opt/main

ENV APPLICATION_SERVER_USER=eka
RUN useradd -r -g "${GROUP}" "${APPLICATION_SERVER_USER}"

COPY configs /opt/configs
COPY bin/linux/amd64/suraksha ${APPLICATION_SERVER_EXEC}
RUN chown "${APPLICATION_SERVER_USER}:${GROUP}" "${APPLICATION_SERVER_EXEC}"

ENTRYPOINT [ "/opt/main" ]
