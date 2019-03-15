FROM alpine:latest
MAINTAINER bitskrieg

RUN apk add --update --no-cache python py-pip python-dev libffi libffi-dev openssl openssl-dev build-base iputils bash curl linux-headers

RUN mkdir -p /root/.config/openstack

RUN pip install python-openstackclient python-heatclient python-designateclient python-zunclient python-muranoclient

RUN apk del build-base linux-headers python-dev libffi-dev openssl-dev

WORKDIR /root

CMD ["bash"]
