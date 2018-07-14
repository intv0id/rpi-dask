FROM resin/rpi-raspbian:jessie

RUN apt-get update && apt-get install -y \
    apt-utils \
    python3 \
    python3-pip \
    build-essential \
    python3-dev \
    #Atlas for numpy
    libatlas-base-dev

RUN pip3 install -U pip3

RUN pip3 install \
    setuptools \
    pandas \
    numpy

RUN pip3 install \
    dask \
    distributed \
    # Bokeh for web UI
    bokeh

COPY prepare.sh /usr/bin/prepare.sh
RUN chmod +x /usr/bin/prepare.sh

RUN mkdir /opt/app

ENTRYPOINT ["/usr/bin/prepare.sh", "/bin/bash"]
