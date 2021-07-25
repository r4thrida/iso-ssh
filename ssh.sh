#!/bin/bash
echo "Enter passwd for remote login"
passwd
sed -i '/#PermitRootLogin/c\PermitRootLogin yes' /etc/ssh/sshd_config || echo "changed sshd_config to enable rooting" && echo "sed failed to make change to sshd."
systemctl start sshd.service
