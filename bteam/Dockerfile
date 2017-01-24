FROM ubuntu:xenial

MAINTAINER brettski

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
      ca-certificates \
      wget \
      unzip \
      openjdk-8-jre-headless && \
      rm -rf /var/lib/apt/lists/*

VOLUME /bteam
WORKDIR /data

# Download
ENV BTEAM_FILE=BTeam_Server_v1.0.12c.zip \
    BTEAM_CHECKSUM=91a9e73db3800bba7f816979566b93e7

RUN wget -q http://servers.technicpack.net/Technic/servers/bteam/${BTEAM_FILE} 
#&& \
#    echo "${BTEAM_CHECKSUM} ${BTEAM_FILE}" | md5sum -c -

EXPOSE 25565

#CMD ["/bteam/runserver.sh"]

