apt-get install build-essential libfuse-dev fuse-utils libcurl4-openssl-dev libxml2-dev mime-support 

VERSION=1.67
SHA=17bf26149ccc810b56fb3b85d8f6487c05d0fd62

wget http://s3fs.googlecode.com/files/s3fs-$VERSION.tar.gz
sha1sum -c <<<"$SHA  s3fs-$VERSION.tar.gz"
tar xvzf s3fs-$VERSION.tar.gz
cd s3fs-$VERSION/
./configure --prefix=/opt/s3fs
make
make DESTDIR=/tmp/DESTDIR install
cd /tmp/DESTDIR
fpm -s dir -t deb --name s3fs --version 1.67 *
