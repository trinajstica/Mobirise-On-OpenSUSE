# First, prepare your system:
#
# sudo zypper install ruby-devel gcc make rpm-build libffi-devel
# sudo gem install --no-document fpm
#
sudo rm *.deb *.rpm 2> /dev/null
wget -c https://download.mobirise.com/MobiriseSetup.deb
sudo fpm --no-depends -s deb -t rpm MobiriseSetup.deb
sudo zypper install mobirise*.rpm

