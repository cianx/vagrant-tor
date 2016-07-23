#!/bin/bash



echo deb http://deb.torproject.org/torproject.org jessie main >> etc/apt/sources.list.d/tor.list
echo deb-src http://deb.torproject.org/torproject.org jessie main >> /etc/apt/sources.list.d/tor.ltst


gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

apt-get update

apt-get install -y ubuntu-desktop
apt-get install -y tor deb.torproject.org-keyring

