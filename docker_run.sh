#!/bin/sh
srcdir=$( cd "$(dirname $0)"  && pwd )
echo "srcdir=$srcdir"
chmod 777 $srcdir/build_alpine.sh
sudo docker run --rm -v $srcdir:/root/jobber alpine:latest /root/jobber/build_alpine.sh
