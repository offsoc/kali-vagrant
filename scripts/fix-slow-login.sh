# https://bugs.kali.org/view.php?id=4994
apt-get update
apt-get install -y haveged
systemctl enable haveged
