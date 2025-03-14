FROM ghcr.io/truatpasteurdotfr/docker-rl9-ci:main
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN yum -y clean all
RUN yum -y update && yum -y upgrade && yum -y install epel-release && yum -y install apptainer && yum -y clean all
RUN date +"%Y-%m-%d-%H%M" > /last_update
