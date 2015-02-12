FROM colstrom/ubuntu-core

MAINTAINER chris@olstrom.com

# libsodium
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0x77d026e2eead66bd \
    && echo 'deb http://ppa.launchpad.net/xuzhen666/dnscrypt/ubuntu trusty main' >> /etc/apt/sources.list \
    && echo 'deb-src http://ppa.launchpad.net/xuzhen666/dnscrypt/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-get update
    && apt-get -y install libsodium

# zeromq
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xb9316a7bc7917b12 \
    && echo 'deb http://ppa.launchpad.net/chris-lea/zeromq/ubuntu trusty main' >> /etc/apt/sources.list \
    && echo 'deb-src http://ppa.launchpad.net/chris-lea/zeromq/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-get update
