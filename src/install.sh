#!/bin/bash
current_dir=`pwd`
cd /tmp
sudo apt-get install python-setuptools
git clone https://github.com/Tigge/openant.git
cd openant
sudo python setup.py install
cd ..
git clone https://github.com/Tigge/antfs-cli.git
cd antfs-cli
sudo python setup.py install
cd $current_dir
