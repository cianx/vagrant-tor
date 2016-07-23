#!/bin/bash



echo deb http://deb.torproject.org/torproject.org jessie main >> /etc/apt/sources.list.d/tor.list
echo deb-src http://deb.torproject.org/torproject.org jessie main >> /etc/apt/sources.list.d/tor.list

apt-get update
apt-get upgrade


gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

apt-get update
apt-get upgrade
#apt-get install -y tor deb.torproject.org-keyring
apt-get install -y flashplugin-installer

cd /hom/vagrant/
mkdir opt
cd opt
wget --progress=dot https://www.torproject.org/dist/torbrowser/6.5a1/tor-browser-linux64-6.5a1_en-US.tar.xz
tar -xvJf tor-browser-linux64-6.5a1_en-US.tar.xz
cd ..
chown vagrant.vagrant -R opt
