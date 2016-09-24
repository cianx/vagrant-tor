#!/bin/bash



echo deb http://deb.torproject.org/torproject.org xenial main >> /etc/apt/sources.list.d/tor.list
echo deb-src http://deb.torproject.org/torproject.org xenial main >> /etc/apt/sources.list.d/tor.list

apt-get update
apt-get upgrade


gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

apt-get update
apt-get upgrade
apt-get install -y tor deb.torproject.org-keyring
apt-get install -y flashplugin-installer


cd /hom/vagrant/
mkdir opt
cd opt
VERSION="6.0.5"
FILE="tor-browser-linux64-${VERSION}_en-US.tar.xz"
URL="https://www.torproject.org/dist/torbrowser/$VERSION/$FILE"
echo $URL
echo "https://www.torproject.org/dist/torbrowser/6.0.5/tor-browser-linux64-6.0.5_en-US.tar.xz"
wget --progress=dot $URL
tar -xvJf $FILE
cd ..

chown vagrant.vagrant -R opt
