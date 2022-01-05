FROM redhat/ubi8

RUN dnf update -y && dnf clean all -y
RUN dnf install -y wget python36 && dnf clean all -y
RUN wget https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py -O /usr/local/bin/systemctl
RUN chmod 755 /usr/local/bin/systemctl

CMD ["/usr/local/bin/systemctl"]
