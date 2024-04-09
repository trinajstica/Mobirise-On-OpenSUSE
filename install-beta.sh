# First prepare your system:
#
# sudo zypper install ruby-devel gcc make rpm-build libffi-devel
# sudo gem install --no-document fpm
#
sudo rm *.deb *.rpm 2> /dev/null
wget -c https://download.mobirise.com/beta/mobirise5beta-setup.deb
sudo fpm --no-depends -s deb -t rpm mobirise5beta-setup.deb
sudo zypper install mobirise*.rpm

