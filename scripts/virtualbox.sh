# Install VirtualBox Guest Additions
apt-get update
# kernel updates frequently and guest additions may update to latest headers, so make sure the kernel version matches the headers version
apt-get install -y linux-headers-amd64 linux-image-amd64
apt-get install -y virtualbox-guest-x11
