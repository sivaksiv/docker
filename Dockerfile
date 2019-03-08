

FROM centos:7
MAINTAINER Sivakumar Sukumar sivaksiv@cisco.com

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install python-pip git openssh-clients python-setuptools python-devel
RUN yum -y group install "Development Tools"
RUN pip install --upgrade pip
RUN pip install ucsmsdk
RUN pip install ansible
RUN pip install tetpyclient
RUN pip install acitoolkit
RUN pip install jmespath ## Enable some query functionality for Ansible playbooks
RUN pip install dnspython ## DNS Lookups for Tetration scripts

WORKDIR /root
RUN git clone https://github.com/sivaksiv/docker.git
WORKDIR /root/docker

CMD ["/bin/bash"]
