#!/bin/sh
srcdir=$( cd "$(dirname $0)"  && pwd )
echo "srcdir=$srcdir"
chmod 777 $srcdir/build_alpine.sh
docker run --rm alpine:latest 
