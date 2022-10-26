FROM debian:bullseye-slim

RUN apt update && apt install -y procps strace tee && apt purge -y

ENTRYPOINT [ "/usr/bin/strace" ]
