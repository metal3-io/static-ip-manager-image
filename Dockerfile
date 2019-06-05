FROM quay.io/higginsd/resource-downloader

RUN yum install -y epel-release && yum clean all

COPY ./set-static-ip.sh /usr/local/bin/set-static-ip.sh
COPY ./refresh-static-ip.sh /usr/local/bin/refresh-static-ip.sh
