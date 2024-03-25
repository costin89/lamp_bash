#!/bin/bash

# Update and upgrade the system
sudo apt-get -y update && sudo apt-get -y upgrade

# Install Apache, PHP, MariaDB, PHP extensions, UFW
sudo apt-get -y install apache2 php mariadb-server php-mysql ufw

# Change ownership and permissions
sudo chown -R admin:www-data /var/www/html
sudo chmod 750 -R /var/www/html

sudo chown -R admin:www-data /var/www
sudo chmod 750 -R /var/www

sudo chmod 775 /var/www/html/
sudo chown -R admin:www-data /var/www/html/

sudo chmod 775 /var/www
sudo chown -R admin:www-data /var/www

# Create a PHP info file
cat <<EOT > /var/www/html/info.php
<?php phpinfo(); ?>
EOT

# Clear the screen
clear

# Secure the MySQL installation
sudo mysql_secure_installation

# Clear the screen
clear

# Restart Apache to apply all changes
sudo service apache2 restart

# Clear the screen
clear

sudo mysql_secure_installation

# Clear the screen
clear

sudo apt-get -y install phpmyadmin

echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf > /dev/null

sudo service apache2 restart

clear
