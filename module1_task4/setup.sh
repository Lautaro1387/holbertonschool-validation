apt-get update
wget https://github.com/gohugoio/hugo/releases/download/v0.79.0/hugo_0.79.0_Linux-64bit.deb
dpkg -i hugo_0.79.0_Linux-64bit.deb
apt-get install make
make build