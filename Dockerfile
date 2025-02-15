FROM ubuntu:22.04
MAINTAINER Raymond Wen

ENV VERSION 5.3.2
RUN apt-get update && apt-get install -y git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
RUN apt-get install -y clang-format

RUN mkdir -p /opt/
RUN git clone -b v$VERSION --recursive https://github.com/espressif/esp-idf.git /opt/esp-idf

RUN cd /opt/esp-idf && ./install.sh
