FROM pataquets/gearmand

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y gearman-tools

ENTRYPOINT ["gearmand"]
