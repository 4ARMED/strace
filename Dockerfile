FROM debian:bullseye-slim

RUN apt update && apt install -y procps strace && apt purge -y

ENTRYPOINT [ "/usr/bin/strace" ]
