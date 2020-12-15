FROM ubuntu:18.04
LABEL author="Harikishore Tadigotla<harikishore@vivasa.in>"

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils net-tools dnsutils \
    curl git zip apt-utils sudo wget unzip locales software-properties-common tmux zsh screen nginx --no-install-recommends

RUN apt-get install -y less libpq-dev python3-pip python3-setuptools vim --no-install-recommends

RUN apt-get install -y openssh-client --no-install-recommends