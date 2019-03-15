FROM alpine:latest
MAINTAINER bitskrieg

RUN apk add --update --no-cache python py-pip git python-dev libffi libffi-dev openssl openssl-dev build-base iputils bash curl linux-headers

RUN pip install python-openstackclient python-heatclient python-designateclient python-zunclient python-muranoclient

WORKDIR /root

CMD ["bash"]
