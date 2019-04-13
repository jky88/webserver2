#!/bin/sh

# install dependancy of mosquitto
sh -c "echo 'deb http://us.archive.ubuntu.com/ubuntu vivid main universe' >> /etc/apt/sources.list"
apt-get update
apt-get install libwebsockets3

# install mosquitto
wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
apt-key add mosquitto-repo.gpg.key
cd /etc/apt/sources.list.d/
wget http://repo.mosquitto.org/debian/mosquitto-stretch.list  # In case of you use debian Jessie (ubuntu 14.04 or higher). If you use stretch (or ubuntu 16.04) download mosquitto-stretch instead.
apt-get update
apt-get install mosquitto mosquitto-clients
apt-get install python-setuptools python-dev build-essential
apt-get install python-pip
pip install paho-mqtt

# install Python Flask
apt-get update

# install nginx
apt-get install nginx

# install pip3
apt-get install python3-pip

# install uwsgi, Flask
pip3 install uwsgi
pip3 install Flask

# install sqlite3 command line tools, for Windows or Mac user, go to Sqlite homepage
apt-get install sqlite3
