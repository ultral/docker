# Latest version of centos
FROM centos:centos7
MAINTAINER Lev Goncharov <lev@goncharov.xyz>
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install make patch curl git sed
Run yum -y install gdbm-devel libdb4-devel libffi-devel libyaml libyaml-devel ncurses-devel openssl-devel readline-devel tcl-devel wget rpm-build glibc-devel gcc openssl
RUN mkdir -p /root/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
RUN wget http://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz -P /root/rpmbuild/SOURCES
RUN wget https://raw.githubusercontent.com/feedforce/ruby-rpm/09fb1f81abd75de2db9974d749531feed63e35e1/ruby.spec -P /root/rpmbuild/SPECS
RUN rpmbuild -bb /root/rpmbuild/SPECS/ruby.spec
RUN rpm -Uvh /root/rpmbuild/RPMS/x86_64/ruby-2.*.rpm
RUN gem install json net
