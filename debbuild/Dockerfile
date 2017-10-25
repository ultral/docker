# Latest version of centos
FROM ubuntu:17.10

MAINTAINER Lev Goncharov <lev@goncharov.xyz>

RUN apt-get update -y --no-install-recommends && \
    apt-get upgrade -y && \
    apt-get install -y dh-make bzr-builddeb && \
    rm -rf /var/cache/apt/archives/*.deb
