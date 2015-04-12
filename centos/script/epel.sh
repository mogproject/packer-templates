#!/bin/bash -eux

echo '==> Installing EPEL repository'
rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-5
rpm -ivh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm

echo '==> Installing git'
yum install -y git

