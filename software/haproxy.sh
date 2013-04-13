wget http://haproxy.1wt.eu/download/1.5/src/devel/haproxy-1.5-dev18.tar.gz
apt-get install libpcre3-dev libssl-dev
make TARGET=linux2628  USE_ZLIB=yes USE_STATIC_PCRE=1 USE_OPENSSL=1
