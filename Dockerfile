FROM resin/rpi-raspbian:jessie

RUN apt update
RUN apt install -y \
    apt-utils \
    python3 \
    python3-pip \
    build-essential \
    python-dev \
    #Atlas for numpy
    libatlas-base-dev \
    # Numpy
    python3-numpy \
    python3-pandas


RUN pip3 install \
    dask \
    distributed

COPY prepare.sh /usr/bin/prepare.sh
RUN chmod +x /usr/bin/prepare.sh

RUN mkdir /opt/app

ENTRYPOINT ["/usr/bin/prepare.sh", "/bin/bash"]