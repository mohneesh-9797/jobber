echo "hello";
apk update
apk add go
apk add su-exec
apk add rsync
apk add make
apk add git 
apk add gcc 
apk add musl-dev
apk add alpine-sdk
sudo --version 
adduser --disabled-password  mohneesh
sh -c "echo 'mohneesh ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"
whoami
cd /tmp
git clone https://github.com/mohneesh-9797/jobber/
chmod -R a+w jobber
addgroup mohneesh abuild
rm -rf /var/cache/distfiles
mkdir –p /var/cache/distfiles
chmod a+w /var/cache/distfiles
chgrp abuild /var/cache/distfiles
chmod g+w /var/cache/distfiles
cd /tmp/jobber/packaging/
chmod -R a+w alpine/
chmod a+w alpine/APKBUILD
addgroup  mohneesh abuild
su - mohneesh -c "whoami;abuild-keygen -a -i"
su - mohneesh -c "cd /tmp/jobber/packaging/alpine;abuild checksum;"
su - mohneesh -c "cd /tmp/jobber/packaging/alpine;abuild -r"
cd /home/mohneesh/packages/packaging/aarch64/
pwd
ls
