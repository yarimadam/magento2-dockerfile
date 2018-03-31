#!/usr/bin/env bash

apt-get update
apt-get upgrade -y

apt-get install -y apt-utils
apt-get install -y curl
apt-get install -y wget

# INSTALL PHP7 AND EXTENSIONS
apt-get install -y nginx
apt-get install -y php7.0-fpm
apt-get install -y php7.0-bcmath
apt-get install -y php7.0-ctype
apt-get install -y php7.0-curl
apt-get install -y php7.0-dom
apt-get install -y php7.0-gd
apt-get install -y php7.0-intl
apt-get install -y php7.0-mbstring
apt-get install -y php7.0-mcrypt
apt-get install -y php7.0-pdo
apt-get install -y php7.0-simplexml
apt-get install -y php7.0-soap
apt-get install -y php7.0-xsl
apt-get install -y php7.0-zip
apt-get install -y php7.0-json
apt-get install -y php7.0-iconv
apt-get install -y php7.0-pdo-mysql

# INSTALL COMPOSER
wget https://getcomposer.org/installer
php installer --install-dir=/usr/local/bin --filename=composer
rm installer

# CREATE LOCAL USER "mage"
useradd -m mage -s /bin/bash
adduser mage sudo > /dev/null

# ARRANGE APPLICATION PATHS
runuser -l mage -c "mkdir -p ~/public"
runuser -l mage -c "mkdir -p ~/log"