FROM debian:latest
MAINTAINER bitskrieg

RUN apt-get update
RUN apt-get install -y python-setuptools python-dev build-essential
RUN easy_install pip
RUN pip install --upgrade six
RUN pip install python-openstackclient python-heatclient python-designateclient python-muranoclient python-zunclient

CMD ["bash"]
