# Update Packages
apt update

# Upgrade Packages
apt upgrade -y

# Install Git
apt install -y git

# Install Apache
apt install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Install PHP
apt install -y php

# PHP Apache Mod
apt install -y libapache2-mod-php

# Restart Apache
service apache2 restart

# Install PHP Mods for working with most MVC frameworks
apt install -y php-common
apt install -y php-mcrypt
apt install -y php-zip
apt install -y php-dev
apt install -y php-json
apt install -y php-xml
apt install -y php-curl
apt install -y php-intl
apt install -y php-mbstring
apt install -y php-bcmath
apt install -y php-mysql

# Install PHP Composer (Latest)
curl -Ss https://getcomposer.org/installer | php
mv composer.phar /usr/bin/composer

# Install NodeJS
apt install -y nodejs
apt install -y npm

# Install MYSQL
debconf-set-selections <<< 'mysql-server mysql-server/root_password password Mysql@vagrant'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password Mysql@vagrant'
apt install -y mysql-server

# Restart Apache
sudo service apache2 restart

# Clean up
apt -y autoremove
apt -y clean

# Disable Sleep
systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
