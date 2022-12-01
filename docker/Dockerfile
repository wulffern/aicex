#- This docker file is not really to run the tools in docker. It's mostly for testing that the full install works
# in linux
FROM ubuntu:20.04
    MAINTAINER Carsten Wulff <carsten@wulff.no>

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone

RUN apt-get update && \
    apt-get -y install sudo curl git python3-pip\
    openssh-server  vim && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash aicex
RUN echo "aicex:aicex" | chpasswd && adduser aicex sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


RUN echo  "X11UseLocalhost no\n" >> /etc/ssh/sshd_config


RUN echo "set num_threads=8\nset ngbehavior=hsa\nset ng_nomodcheck\n" >> /home/aicex/.spiceinit

EXPOSE 22

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/
COPY tests tests
RUN /bin/bash tests/install_ubuntu.sh

#- I've compiled the eda tools and open_pdk result on a ubuntu 20.04 machine, so it's just cloning
#ARG STEP12=false
RUN /bin/bash tests/clone_eda.sh
#ARG STEP13=false
RUN /bin/bash tests/clone_open_pdk.sh
RUN sudo rm -rf skywater-pdk
RUN sudo rm -rf open_pdk

RUN sudo python3 -m pip install matplotlib numpy click svgwrite pyyaml pandas tabulate wheel setuptools tikzplotlib

USER aicex
WORKDIR /home/aicex
RUN mkdir /home/aicex/.ssh

ENTRYPOINT sudo service ssh restart && tail -f /dev/null
#CMD ["/usr/bin/sudo", "/usr/sbin/sshd", "-D", "-o", "ListenAddress=0.0.0.0"]
