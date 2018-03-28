FROM avhost/docker-matrix:v0.26.1.1
MAINTAINER mwaeckerlin

RUN groupadd -r -g $MATRIX_GID matrix
RUN useradd -r -d /data -M -u $MATRIX_UID -g matrix matrix
RUN groupadd -g 500 ssl-cert
RUN usermod -a -G ssl-cert turnserver
RUN usermod -a -G ssl-cert matrix
