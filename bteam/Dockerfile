FROM ubuntu:xenial

MAINTAINER brettski

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
      apt-utils \
      ca-certificates \
      curl \
      wget \
      unzip \
      openjdk-8-jdk && \
      rm -rf /var/lib/apt/lists/*


# Download and prepare B-Team server
# TODO: add checksum
RUN wget -q http://servers.technicpack.net/Technic/servers/bteam/BTeam_Server_v1.0.12c.zip && \
    # Will do this when running the container
    #unzip BTeam_Server_v1.0.12c.zip -d /bteam && \
    #chmod +x /bteam/launch.sh

VOLUME /bteam
WORKDIR /bteam

EXPOSE 25565

CMD ["/bteam/launch.sh"]

