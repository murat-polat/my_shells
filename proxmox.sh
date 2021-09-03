####  On Debian 10 ####



echo "deb [arch=amd64] http://download.proxmox.com/debian/pve buster pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list

wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg
chmod +r /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg 

apt update && apt full-upgrade


apt install proxmox-ve postfix open-iscsi

## Say No to DHCP and select "local only" ##

### https://yourip:8006 ##