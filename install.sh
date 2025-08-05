#!/bin/bash

dpkg -i deb/*.deb
apt-get -f -y install
