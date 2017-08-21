#! /bin/bash

echo "127.0.0.1 $1" >> /etc/hosts

mkdir /Library/WebServer/Documents/$1

chown -R $2:wheel /Library/WebServer/Documents/$1

echo "<VirtualHost *:80>
    DocumentRoot \"/Library/WebServer/Documents/$1\"
    ServerName $1
    ErrorLog \"/private/var/log/apache2/$1-error_log\"
    CustomLog \"/private/var/log/apache2/$1-access_log\" common
    <Directory \"/Library/WebServer/Documents/$1\">
        Options FollowSymLinks Multiviews
        MultiviewsMatch Any
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>" >> /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf

apachectl restart

'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' /Library/WebServer/Documents/$1
