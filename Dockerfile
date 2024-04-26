FROM alpine:3.19

ARG STRUCTURE_TEST_VERSION=1.17.0
ENV STRUCTURE_TEST_VERSION=${STRUCTURE_TEST_VERSION}
ENV DOWNLOAD_URL=https://github.com/GoogleContainerTools/container-structure-test/releases/download/v${STRUCTURE_TEST_VERSION}/container-structure-test-linux-amd64

RUN apk add --no-cache curl

RUN curl -LO ${DOWNLOAD_URL} \
    && chmod +x container-structure-test-linux-amd64 \
    && mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test \
    && container-structure-test version

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
