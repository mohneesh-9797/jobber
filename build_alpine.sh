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
sudo --version 
adduser --disabled-password  mohneesh
sudo sh -c "echo 'mohneesh ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"
cd /tmp
git clone https://github.com/mohneesh9797-puresoftware/jobber/
chmod -R a+w jobber
addgroup mohneesh abuild
rm -rf /var/cache/distfiles
mkdir –p /var/cache/distfiles
chmod a+w /var/cache/distfiles
chgrp abuild /var/cache/distfiles
chmod g+w /var/cache/distfiles
su mohneesh
abuild-keygen –a –i
cd /tmp/jobber/packaging/alpine 
abuild checksum
abuild –r 
