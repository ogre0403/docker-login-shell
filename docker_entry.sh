#!/bin/bash

CONTAINER_USERNAME=$1
CONTAINER_GROUPNAME=$2
GROUP_ID=$3
USER_ID=$4
HOMEDIR='/home/'$CONTAINER_USERNAME

#echo $CONTAINER_USERNAME
#echo $CONTAINER_GROUPNAME
#echo $GROUP_ID
#echo $USER_ID


groupadd -f -g $GROUP_ID $CONTAINER_GROUPNAME
useradd -u $USER_ID --gid $GROUP_ID -s /bin/bash $CONTAINER_USERNAME
mkdir --parent $HOMEDIR
chown -R $CONTAINER_USERNAME:$CONTAINER_GROUPNAME $HOMEDIR

su $CONTAINER_USERNAME
/bin/bash

#su -m r -c /home/r/script.sh
#adduser r sudo
#echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
