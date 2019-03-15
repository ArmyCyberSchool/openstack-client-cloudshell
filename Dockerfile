FROM alpine:latest
MAINTAINER bitskrieg

RUN apk add --update --no-cache python py-pip git build-base iputils bash curl linux-headers

RUN pip install --upgrade six
RUN pip install python-openstackclient python-heatclient python-designateclient python-muranoclient python-zunclient

WORKDIR /workspace

CMD ["sh"]
