#!/bin/bash

userid=$1
temp=$2
action=${temp,,}

if [ "$action" == "grant" ]
then
    echo "USERID: $userid"
    echo "You chose grant"
    sed -i "/\b$userid\b/d" /etc/ssh/sshd_config
    systemctl restart sshd
elif [ "$action" == "revoke" ]
then
    echo "USERID: $userid"
    echo "You chose revoke"
    grep -qxF "DenyUsers $userid" /etc/ssh/sshd_config || echo "DenyUsers $userid" >> /etc/ssh/sshd_config
    systemctl restart sshd
fi