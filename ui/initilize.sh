#!/bin/bash -e

USER_ID=$(id -u)
GROUP_ID=$(id -g)
PASSWD=${PASSWD:-${DEFAULT_PASSWD}}
USER=${USER:-${DEFAULT_USER}}

if [ ${USER_ID} -eq 0 ]; then
    exit 0
fi

# create group
groupadd -g $GROUP_ID $USER

# add user
export HOME=/home/$USER
useradd -d ${HOME} -m -s /bin/bash -u $USER_ID -g $GROUP_ID $USER
echo ${USER}:${PASSWD} | sudo chpasswd
echo root:${PASSWD} | sudo chpasswd

sudo rm -f ./opt/initilize.sh

# revert permission
sudo chmod u-s /usr/sbin/useradd
sudo chmod u-s /usr/sbin/groupadd

sudo rm -f /etc/sudoers.d/ALL
