FROM alpine:latest
MAINTAINER bitskrieg

RUN apk add --update --no-cache python py-pip git build-base iputils bash curl linux-headers

WORKDIR /root

CMD ["bash"]
