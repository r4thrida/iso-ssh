#!/bin/bash
echo "Enter passwd for remote login"
sed -i '/PermitRootLogin prohibit-password/s/^#//g' /etc/ssh/sshd_config || echo "you can login to iso on ansible" && echo "sed failed to make chagne to sshd.
systemctl start sshd.service
