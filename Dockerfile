FROM ubuntu:16.04
MAINTAINER Pablo González Nalda pablo.gonzalez@ehu.eus

USER root

RUN apt-get update && apt-get install -yq software-properties-common python-software-properties && \
    add-apt-repository ppa:gluster/glusterfs-3.7 && \
    apt-get update && apt-get install -yq glusterfs-server && \
    rm -rf /var/lib/apt/lists/*

# setup entrypoint
# WORKDIR /root
CMD ["/bin/bash"]
