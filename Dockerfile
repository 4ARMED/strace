FROM debian:bullseye-slim

RUN apt update && apt install -y curl procps strace

RUN curl -L -o /tmp/sysdig.deb https://github.com/draios/sysdig/releases/download/0.30.0/sysdig-0.30.0-x86_64.deb && apt install -y -f /tmp/sysdig.deb && apt purge -y

ENTRYPOINT [ "/usr/bin/strace" ]
