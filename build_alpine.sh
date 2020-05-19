echo "hello";
apk update
apk add go rsync make git gcc musl-dev alpine-sdk
adduser --disabled-password  mohneesh
sh -c "echo 'mohneesh ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"
cd /tmp
git clone https://github.com/mohneesh-9797/jobber/
chmod -R a+w jobber
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
