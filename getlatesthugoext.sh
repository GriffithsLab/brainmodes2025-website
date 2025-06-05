HUGO_VERSION="0.125.4"
HUGO_TAR="hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz"
wget -q https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TAR}
tar -xzf ${HUGO_TAR} hugo
chmod +x hugo
mv hugo hugo_ext
rm $HUGO_TAR
# sudo mv hugo /usr/local/bin/hugo
