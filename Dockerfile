###################################
# Dockerfile to set up
# the secureapi app
# based on the Ubuntu image
###################################

FROM ubuntu:14.04

MAINTAINER Sumana Harihareswara

RUN apt-get update

RUN apt-get install -y git

RUN git clone https://github.com/brainwane/secureapi.git

# RUN apt-get install -y racket
# figure out how to install racket from the website

# git clone the repo

# expose a port


