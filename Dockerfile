FROM ubuntu:18.04
LABEL author="Harikishore Tadigotla<harikishore@vivasa.in>"

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils net-tools dnsutils \
    curl git zip apt-utils sudo wget unzip locales software-properties-common tmux zsh screen nginx --no-install-recommends

RUN apt-get install -y less libpq-dev python3-pip python3-setuptools vim --no-install-recommends

RUN apt-get install -y openssh-client gpg-agent --no-install-recommends

# Create the file repository configuration:
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

# Import the repository signing key:
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

# Update the package lists:
RUN apt-get update

