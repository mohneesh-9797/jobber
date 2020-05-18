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
git clone https://github.com/mohneesh9797-puresoftware/jobber/
chmod -R a+w jobber
addgroup mohneesh abuild
rm -rf /var/cache/distfiles
mkdir –p /var/cache/distfiles
chmod a+w /var/cache/distfiles
chgrp abuild /var/cache/distfiles
chmod g+w /var/cache/distfiles
chmod 777 jobber/build_package.sh
pwd
ls
sudo su - mohneesh
whoami
exec su-exec mohneesh "./build_package.sh "
cd /tmp/jobber/packaging/alpine 
chmod -R 777 /home/mohneesh/.abuild/
exec su-exec mohneesh "sh 'abuild-keygen –a –i'"
sudo -u mohneesh "abuild checksum"
sudo -u mohneesh "abuild –r" 
