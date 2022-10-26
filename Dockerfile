FROM debian:bullseye-slim

RUN apt update && apt install -y strace && apt purge -y

ENTRYPOINT [ "/usr/bin/strace" ]