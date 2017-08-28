# Latest version of centos
FROM centos:centos7
MAINTAINER Lev Goncharov <lev@goncharov.xyz>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install make patch ruby rubygems git
RUN gem install json_pure serverspec rake rubocop
