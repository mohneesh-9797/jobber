echo "hello";
apk update
apk add -y go
apk add -y rsync
apk add -y make
apk add -y git 
apk add -y gcc 
apk add -y musl-dev
apk add -y alpine-sdk
apk add -y git 
adduser mohneeesh
mohneesh ALL=(ALL)ALL >> /etc/sudoers 
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
