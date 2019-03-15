FROM alpine:latest
MAINTAINER bitskrieg

RUN apk add --update --no-cache python py-pip git python-dev libffi libffi-dev openssl openssl-dev build-base iputils bash curl linux-headers

RUN git clone https://github.com/openstack/python-openstackclient.git /root/client --depth 1
RUN cd /root/client
RUN pip install --no-cache-dir .

RUN apk del build-base linux-headers python-dev libffi-dev openssl-dev

WORKDIR /root

CMD ["sh"]
