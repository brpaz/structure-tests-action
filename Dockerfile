FROM alpine:3.10

ARG STRUCTURE_TEST_VERSION=1.8.0

RUN apk add --no-cache curl~=7 git~=2

RUN curl -LO https://storage.googleapis.com/container-structure-test/v$STRUCTURE_TEST_VERSION/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
