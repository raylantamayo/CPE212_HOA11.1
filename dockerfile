FROM ubuntu

MAINTAINER raylantamayo <qrlatamayo@tip.edu.ph>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt update; apt dist-upgrade -y

# install packages
RUN apt install -y apache2 mariadb-server

# SEtting teh entrypoint
ENTRYPOINT apache2ctl -D FOREGOUND
ENTRYPOINT mariadb -D FOREGOUND
