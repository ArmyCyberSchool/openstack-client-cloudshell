FROM alpine:latest
MAINTAINER bitskrieg

RUN apk add --update --no-cache python python3 py-pip python-dev python3-dev libffi libffi-dev openssl openssl-dev build-base iputils bash curl linux-headers

RUN mkdir -p /root/.config/openstack

RUN pip3 install python-openstackclient python-heatclient python-designateclient python-zunclient python-magnumclient python-saharaclient python-barbicanclient python-manilaclient

RUN apk del build-base linux-headers python-dev libffi-dev openssl-dev

WORKDIR /root

CMD ["bash"]
