FROM debian:latest
MAINTAINER bitskrieg

RUN apt-get update
RUN apt-get install -y python-dev build-essential curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o install-pip.py
RUN python install-pip.py
RUN pip install --upgrade six
RUN pip install python-openstackclient python-heatclient python-designateclient python-muranoclient python-zunclient

CMD ["bash"]
