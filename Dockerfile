FROM alpine:latest as unzipper
ARG JADX_TAG=v1.4.7
RUN apk add unzip wget
RUN mkdir /opt/jadx/ && \
  wget -O jadx.zip https://github.com/skylot/jadx/releases/download/${JADX_TAG}/jadx-${JADX_TAG/v/}.zip && \
  unzip -d /opt/jadx jadx.zip

FROM eclipse-temurin:11
COPY --from=unzipper /opt/jadx/ /opt/jadx/
ENV PATH="${PATH}:/opt/jadx/bin"

ENTRYPOINT ["jadx"]