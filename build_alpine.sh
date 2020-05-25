apk update
apk add go rsync make git gcc musl-dev alpine-sdk tree
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
addgroup  mohneesh abuild
su - mohneesh -c "abuild-keygen -a -i"
su - mohneesh -c "cd /tmp/jobber; make -C packaging/alpine pkg-local"
uname -m 
tree /home/mohneesh/
