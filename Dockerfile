FROM avhost/docker-matrix:v0.26.1.1
MAINTAINER mwaeckerlin

RUN groupadd -g 500 ssl-cert
RUN usermod -a -G ssl-cert turnserver
RUN usermod -a -G ssl-cert matrix
