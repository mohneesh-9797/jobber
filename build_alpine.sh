echo "hello";
apk update
apk add sudo
apk add go
apk add rsync
apk add make
apk add git 
apk add gcc 
apk add musl-dev
apk add alpine-sdk
apk add git 
adduser --disabled-password  mohneesh
cat /etc/sudo.conf
sh -c "echo 'Set disable_coredump false'" >> /etc/sudoers
echo "1"
sudo sh -c "echo 'mohneesh ALL=NOPASSWD: ALL' >> /etc/sudoers"
cat /etc/sudoers
echo "hi hello"
cat /etc/sudo.conf
su mohneesh
sudo git clone https://github.com/mohneesh9797-puresoftware/jobber/
sudo addgroup mohneesh abuild
sudo mkdir –p /var/cache/distfiles
sudo chmod a+w /var/cache/distfiles
sudo chgrp abuild /var/cache/distfiles
sudo chmod g+w /var/cache/distfiles
abuild-keygen –a –i
cd jobber/packaging/ 
sudo chmod -R a+w alpine 
cd alpine 
abuild checksum
abuild –r 
