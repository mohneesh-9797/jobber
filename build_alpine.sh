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
cat /etc/sudoers
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
exec su-exec mohneesh "pwd "
exec su-exec mohneesh "./jobber/build_package.sh "
cd /tmp/jobber/packaging/alpine 
chmod -R 777 /home/mohneesh/.abuild/
exec su-exec mohneesh "sh 'abuild-keygen –a –i'"
sudo -E su mohneesh "sh 'abuild checksum'"
sudo -E su mohneesh "sh 'abuild –r'" 
