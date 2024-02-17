#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt-get install -y htop ufw openssh-server apache2 lsb-release php php-mysql phpmyadmin mariadb-server libapache2-mod-php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-intl php-mbstring php-curl php-xml php-pear php-tidy php-soap php-bcmath php-xmlrpc vsftpd

clear

lxterminal -e htop

sudo wget https://wordpress.org/latest.zip -O /var/www/html/wordpress.zip
cd /var/www/html
sudo unzip wordpress.zip

sudo apt update && sudo apt upgrade

sudo chown -R serverpi:www-data -R /var/www/html
chmod 750 -R /var/www/html

sudo chown www-data wordpress -R
sudo chmod 755 -R /var/www/wordpress

sudo chown -R serverpi:www-data -R /var/www
chmod 750 -R /var/www

cd /var/www/html/

# Erstellt oder überschreibt die Datei info.php
cat <<EOT > info.php
<?php echo"hello world"; ?>
<?php echo date('Y-m-d H:i:s'); ?>
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

echo "Datei info.html wurde erstellt/überschrieben."

cd

sudo service apache2 restart

sudo apt install nodejs npm

nodejs -v

clear

sudo apt update && sudo apt upgrade

sudo service apache2 restart

sudo ufw allow sudo ufw allow "WWW Full" && 22/tcp && sudo ufw allow 80/tcp && sudo ufw allow 443/tcp && sudo ufw allow 3025/tcp && sudo ufw allow 3025/udp && sudo ufw allow OpenSSH && sudo ufw allow from any to any port 3389 proto tcp && sudo ufw status && sudo ufw --force enable

sudo apt update && sudo apt upgrade

sudo service apache2 restart wordpress.zip

rm /var/www/html/wordpress.zip

clear

echo "Sie sollten das System jetzt neu starten."

#LINKS
# https://raspberrytips.com/wordpress-on-raspberry-pi/
# https://projects.raspberrypi.org/en/projects/lamp-web-server-with-wordpress/
# https://www.makeuseof.com/tag/host-wordpress-raspberry-pi/
#

# sudo mysql -u root -p
# DROP USER 'root'@'localhost';
# CREATE USER 'root'@'localhost' IDENTIFIED BY 'root';
# GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
# CREATE DATABASE wordpress;
# GRANT ALL ON wordpress.* TO 'root'@'localhost';
