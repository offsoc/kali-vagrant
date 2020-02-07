# Ref: https://www.vagrantup.com/docs/boxes/base.html
# Use the 'kali' user instead of 'vagrant'

# Add the vagrant insecure pub key
mkdir /home/kali/.ssh
wget -O /home/kali/.ssh/authorized_keys https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub
chmod 0700 /home/kali/.ssh/
chmod 0600 /home/kali/.ssh/authorized_keys
chown -R kali:kali /home/kali/.ssh/

# Password-less sudo for vagrant user
echo 'kali ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/kali-vagrant
chmod 0440 /etc/sudoers.d/kali-vagrant

# SSH tweak
echo 'UseDNS no' >> /etc/ssh/sshd_config
