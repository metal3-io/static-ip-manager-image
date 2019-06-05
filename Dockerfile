FROM quay.io/higginsd/resource-downloader

RUN yum install -y iproute && yum clean all

COPY ./set-static-ip /set-static-ip
COPY ./refresh-static-ip /refresh-static-ip
