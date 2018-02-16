FROM debian:stretch
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER giovanni.tarter@gmail.com
ADD proxmox.list /etc/apt/sources.list.d/proxmox.list
ADD proxmox-ve-release-5.x.gpg /tmp/prox_key

RUN apt-get update 
RUN apt-get install --yes apt-utils 
RUN apt-get install --yes gnupg
RUN apt-key adv --fetch-keys http://download.proxmox.com/debian/proxmox-ve-release-5.x.gpg 

RUN apt-get update 
RUN apt-get install --yes pve-qemu-kvm
