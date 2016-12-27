#!/bin/bash

until sudo yum -y update; do echo "Waiting for yum lock"; sleep 5; done
yum -y install kernel-devel openssh acpid python-setuptools bzip2 gcc

# Build the latest Git version, the one in the repository is ancient
yum -y groupinstall "Development Tools"
yum -y install curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel

curl https://github.com/git/git/archive/v2.11.0.tar.gz --location --output /tmp/git.tar.gz
cd /tmp
tar -zxf git.tar.gz
cd git-2.11.0
make configure
./configure --prefix=/usr
make install
git --version
