#!/bin/sh
srcdir=$( cd "$(dirname $0)"  && pwd )
echo "srcdir=$srcdir"
chmod 777 $srcdir/build_alpine.sh
sudo docker run -v $srcdir:/root/jobber --rm alpine:latest /root/jobber/build_alpine.sh
