#- This docker file is not really to run the tools in docker. It's mostly for testing that the full install works
# in linux
FROM ubuntu:20.04
    MAINTAINER Carsten Wulff <carsten@wulff.no>

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt-get update && \
      apt-get -y install sudo curl git python3-pip

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers



ARG DEBIAN_FRONTEND=noninteractive

USER docker
WORKDIR /home/docker
RUN mkdir pro
WORKDIR /home/docker/pro

COPY . aicex
WORKDIR /home/docker/pro/aicex
RUN sudo /bin/bash tests/install_cicsim.sh
RUN sudo /bin/bash tests/install_cicpy.sh
RUN sudo /bin/bash tests/install_ubuntu.sh
#COPY install.sh .
#RUN /bin/bash install.sh
#RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/wulffern/aicex/main/install.sh?$RANDOM)"

RUN echo 'export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH' >> ~/.bashrc
