VERSION=1.5-X
wget http://haproxy.1wt.eu/download/1.5/src/devel/haproxy-$VERSION.tar.gz
apt-get install libpcre3-dev libssl-dev
make TARGET=linux2628 USE_ZLIB=yes USE_STATIC_PCRE=1 USE_OPENSSL=1
fpm -s dir -t deb --name haproxy-15 --version $VERSION --prefix /opt/haproxy/1.5 -f \
  haproxy haproxy-systemd-wrapper \
  doc examples \
  CHANGELOG LICENSE VERSION VERDATE 
