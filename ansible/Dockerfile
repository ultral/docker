# Latest version of centos
FROM centos:centos7
MAINTAINER Lev Goncharov <lev@goncharov.xyz>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip ansible python-netaddr python-ipaddr python-jinja2
RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
