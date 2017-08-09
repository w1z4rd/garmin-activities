#!/bin/bash
WORK_DIR=$(dirname $(readlink -f ${0}))
cd /tmp
sudo apt-get install python-setuptools python-pip -y
git clone https://github.com/Tigge/openant.git
cd openant
sudo python setup.py install
cd ..
git clone https://github.com/Tigge/antfs-cli.git
cd antfs-cli
sudo python setup.py install
cp scripts/40-upload_to_garmin_connect.py ~/.config/antfs-cli/scripts
sudo pip install antfs_cli[upload]
cd $WORK_DIR
sudo update-alternatives --install /usr/bin/garmin garmin $WORK_DIR/get_activities.sh 99
