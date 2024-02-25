#!/bin/bash

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

sudo chown -R admin:www-data -R /var/www/html
chmod 750 -R /var/www/html
sudo chown -R admin:www-data -R /var/www
chmod 750 -R /var/www

URL="https://raw.githubusercontent.com/costin89/lamp_bash/main/info.php"
URL2="https://raw.githubusercontent.com/costin89/lamp_bash/main/info.html"

# Definiere den Namen der Datei nach dem Herunterladen
FILENAME="info.php"
FILENAME2="info.html"

# Definiere das Zielverzeichnis
DEST="/www/html"

curl -o $DEST/$FILENAME $URL
curl -o $DEST/$FILENAME2 $URL2

sudo ufw allow sudo ufw allow "WWW Full" && 22/tcp && sudo ufw allow 80/tcp && sudo ufw allow 443/tcp && sudo ufw allow 3025/tcp && sudo ufw allow 3025/udp && sudo ufw allow OpenSSH && sudo ufw allow from any to any port 3389 proto tcp && sudo ufw status && sudo ufw --force enable

sudo service apache2 restart

clear

sudo apt update && sudo apt upgrade
