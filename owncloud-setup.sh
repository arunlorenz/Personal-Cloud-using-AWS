#!/bin/bash

# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install -y apache2 postgresql postgresql-contrib php libapache2-mod-php php-pgsql php-json php-mbstring php-curl php-xml php-pear php-bcmath php-zip php-intl php-gd unzip wget

# Set up PostgreSQL database and user
sudo -i -u postgres << EOF
createuser --pwprompt ownclouduser
createdb --owner=ownclouduser ownclouddb
EOF

# Download and unzip OwnCloud
wget https://download.owncloud.com/server/stable/owncloud-complete-latest.zip
sudo unzip owncloud-complete-latest.zip -d /var/www/

# Set permissions
sudo mkdir -p /var/www/owncloud/data
sudo chown -R www-data:www-data /var/www/owncloud/

# Set up Apache configuration for OwnCloud
sudo cp owncloud.conf /etc/apache2/sites-available/owncloud.conf

# Enable OwnCloud site and restart Apache
sudo a2ensite owncloud.conf
sudo systemctl restart apache2
