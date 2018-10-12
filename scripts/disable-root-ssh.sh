# root ssh login must be enabled (done in preseed file) for initial provisioning but should be disabled afterwards
sed -i '/PermitRootLogin yes/d' /etc/ssh/sshd_config
