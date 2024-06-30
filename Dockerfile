FROM alpine:3.20

ARG CST_VER=1.18.1
RUN apk add --no-cache curl \
    && curl -sSL https://github.com/GoogleContainerTools/container-structure-test/releases/latest/download/container-structure-test-linux-amd64 \
    && chmod +x container-structure-test-linux-amd64  \
    && mkdir -p $HOME/bin  \
    && export PATH=$PATH:$HOME/bin  \
    && mv container-structure-test-linux-amd64 $HOME/bin/container-structure-test
