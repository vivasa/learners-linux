FROM ubuntu:18.04
LABEL author="Harikishore Tadigotla<harikishore@vivasa.in>"

ENV TERM xterm-256color
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils net-tools dnsutils \
    curl git zip apt-utils sudo wget unzip locales software-properties-common tmux zsh screen nginx --no-install-recommends

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

RUN apt-get install -y less libpq-dev python3-pip python3-setuptools vim --no-install-recommends

RUN pip3 install psycopg2-binary questionary pipenv rule-engine

RUN usermod --shell /bin/zsh root

# Install SDKMAN that allows us to install Java frameworks like maven, gradle, grails etc
RUN curl -s "https://get.sdkman.io" | bash

RUN echo 'sdkman_curl_connect_timeout=30'  >> "$HOME/.sdkman/etc/config"
RUN echo 'sdkman_curl_max_time=0'  >> "$HOME/.sdkman/etc/config"

RUN apt-get install -y openssh-client

RUN rm -rf /var/www/html
RUN echo 'buffer.....'
RUN git clone https://github.com/vivasa/wiki.git -b master --single-branch --depth 1 /var/www/html

#Personalized zshrc for root
ADD config/zshrc /root/.zshrc
ADD config/welcome /root/welcome
ADD config/startup.sh /root/startup.sh
ADD config/nginx.conf /etc/nginx/sites-available/default

CMD ["/root/startup.sh"]