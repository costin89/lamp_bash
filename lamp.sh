#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt-get install -y htop &&
sudo apt-get install -y proftpd &&
sudo apt-get install -y ufw &&
sudo apt-get install -y openssh-server &&
sudo apt-get install -y apache2 &&
sudo apt-get install -y lsb-release &&
sudo apt-get install -y php php-mysql &&
sudo apt-get install -y phpmyadmin &&
sudo apt-get install -y mariadb-server &&
sudo apt-get install -y libapache2-mod-php &&
sudo apt-get install -y php-cli &&
sudo apt-get install -y php-fpm &&
sudo apt-get install -y php-json &&
sudo apt-get install -y php-common &&
sudo apt-get install -y php-mysql &&
sudo apt-get install -y php-zip &&
sudo apt-get install -y php-gd &&
sudo apt-get install -y php-intl &&
sudo apt-get install -y php-mbstring &&
sudo apt-get install -y php-curl &&
sudo apt-get install -y php-xml &&
sudo apt-get install -y php-pear &&
sudo apt-get install -y php-tidy &&
sudo apt-get install -y php-soap &&
sudo apt-get install -y php-bcmath &&
sudo apt-get install -y php-xmlrpc &&
sudo apt-get install -y vsftpd

clear

# lxterminal -e htop

sudo apt update && sudo apt upgrade

sudo chown -R admin:www-data -R /var/www/html && chmod 750 -R /var/www/html

sudo chown -R admin:www-data -R /var/www && chmod 750 -R /var/www

cd /var/www/html/

# Erstellt oder überschreibt die Datei info.php
cat <<EOT > info.php
<?php phpinfo(); ?>
EOT

echo "Datei info.php wurde erstellt/überschrieben."

# Erstellt oder überschreibt die Datei info.html
cat <<EOT > info.html
<!DOCTYPE html>
<html>
        <head>
                <meta charset="UTF-8">
                <title></title>
        </head>
        <body>
                <center>
                        <p>Hallo Welt</p>
                        <p>Hier entsteht learninghubs.space</p>
                </center>
        </body>
</html>
EOT

cd

sudo service apache2 restart

sudo apt install nodejs npm

nodejs -v

clear

sudo apt update && sudo apt upgrade

sudo service apache2 restart

sudo ufw allow sudo ufw allow "WWW Full" && 22/tcp && sudo ufw allow 80/tcp && sudo ufw allow 443/tcp && sudo ufw allow 3025/tcp && sudo ufw allow 3025/udp && sudo ufw allow OpenSSH && sudo ufw allow from any to any port 3389 proto tcp && sudo ufw status && sudo ufw --force enable

sudo apt update && sudo apt upgrade

sudo service apache2 restart

clear

echo "Sie sollten das System jetzt neu starten."

#LINKS
# https://raspberrytips.com/wordpress-on-raspberry-pi/
# https://projects.raspberrypi.org/en/projects/lamp-web-server-with-wordpress/
# https://www.makeuseof.com/tag/host-wordpress-raspberry-pi/

# sudo mysql -u root -p
# DROP USER 'root'@'localhost';
# CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
# GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
# CREATE DATABASE wordpress;
# GRANT ALL ON wordpress.* TO 'root'@'localhost';
