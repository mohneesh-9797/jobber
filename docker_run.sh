srcdir=$( cd "$(dirname $0)"  && pwd )
echo "srcdir=$srcdir"
sudo docker run --rm -v $srcdir:/root/jobber alpine:latest /root/jobber/build_alpine.sh
