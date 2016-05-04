FROM ubuntu
MAINTAINER Bastian Bringenberg <bastian@agentur-pottkinder.de>

RUN apt-get update
RUN apt-get -y install gzip git curl python libssl-dev pkg-config build-essential
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN mkdir /var/etherpad
WORKDIR /var/etherpad
RUN git clone git://github.com/ether/etherpad-lite.git .

COPY ./static/settings.json /var/etherpad/settings.json

WORKDIR /var/etherpad/bin

COPY ./static/entrypoint.sh /var/etherpad/bin/entrypoint.sh
RUN chmod +x /var/etherpad/bin/entrypoint.sh

CMD ["/var/etherpad/bin/entrypoint.sh"]

EXPOSE 9001
