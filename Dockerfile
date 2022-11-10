# Set the base image to Ubuntu
FROM steamcmd/steamcmd:ubuntu-18

# File Author / Maintainer
LABEL maintainer="Jona Koudijs"

# Set environment variables
ENV TIMEZONE=Europe/Amsterdam
ENV DEBIAN_FRONTEND=noninteractive
ENV USER battalion
ENV HOME /data

################## BEGIN INSTALLATION ######################

# Create the application user
RUN useradd -m -d $HOME $USER

# Create required directories
#RUN mkdir -p $HOME/config

# Install prerequisites
RUN apt-get update -y \
 && apt-get install -y libcurl4 \
 && rm -rf /var/lib/apt/lists/*

# Download the application via steamcmd
RUN steamcmd +login anonymous +force_install_dir $HOME \
    +app_update 805140 validate +quit

# Copy configuration
#COPY config/server.cfg $HOME/config/server.cfg

##################### INSTALLATION END #####################

# Expose the default ports
EXPOSE 7777/udp 7777/tcp 27015/udp 27015/tcp

# Switch to user
USER $USER

# Working directory
WORKDIR $HOME

# Set default container command
ENTRYPOINT ["/data/BattalionServer.sh"]
CMD ["-log"]
