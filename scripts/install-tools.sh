#!/bin/bash

until sudo yum -y update; do echo "Waiting for yum lock"; sleep 5; done
yum -y install kernel-devel openssh acpid python-setuptools git bzip2 gcc
