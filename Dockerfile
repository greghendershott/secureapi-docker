###################################
# Dockerfile to set up
# the secureapi app
# based on the Ubuntu image
###################################

# In /etc/default/docker be sure to un-comment the line:
#
#    DOCKER_OPTS="--dns 8.8.8.8 --dns 8.8.4.4"
#
# Otherwise things like apt-get won't have DNS that works.

FROM ubuntu:14.04

MAINTAINER Sumana Harihareswara

RUN apt-get update

RUN apt-get install -y git curl python2.7

ADD ./install-racket.sh /tmp/install-racket.sh
RUN /bin/bash /tmp/install-racket.sh
# Easiest (?) way to add Racket to the PATH is to supply
# our own /etc/bash.bashrc.
# ADD ./bash.bashrc /etc/bash.bashrc
ENV PATH $PATH:/usr/racket/bin/

RUN git clone https://github.com/brainwane/secureapi.git

# EXPOSE 8000

# ENTRYPOINT python2.7 hhserver.py
