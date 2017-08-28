# Latest version of centos
FROM centos:centos7
MAINTAINER Lev Goncharov <lev@goncharov.xyz>
RUN yum clean all && \
    yum -y install rpm-build make curl tar git
RUN mkdir -pv ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
