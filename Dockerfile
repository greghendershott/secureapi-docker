###################################
# Dockerfile to set up
# the secureapi app
# based on the Ubuntu image
###################################

FROM ubuntu:14.04

MAINTAINER Sumana Harihareswara

# RUN apt-get update

# RUN apt-get install -y git - maybe already installed?

ADD ./install-racket.sh /tmp/install-racket.sh

RUN /bin/bash /tmp/install-racket.sh


# RUN git clone https://github.com/brainwane/secureapi.git


# expose a port


