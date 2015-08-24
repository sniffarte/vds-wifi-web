From ubuntu:trusty
MAINTAINER Sniffarte

# Set noninteractive mode for apt-get
ENV DEBIAN_FRONTEND noninteractive

# Upgrade base system packages
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install -y nodejs

# Add files
ADD packages.json /vds-wifi/
ADD install.sh /opt/install.sh


# Run
CMD install.sh
