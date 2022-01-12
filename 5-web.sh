sudo apt-get install -y mariadb-server
sudo apt-get install -y php7.4-cli php7.4-cgi php7.4-mysql
sudo apt-get install -y lighttpd

# Enable PHP CGI modules
sudo lighty-enable-mod fastcgi
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload
