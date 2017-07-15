################################################################################
# Script LAMPP  installation on   Ubuntu 14.04 LTS
# Author: Tantan Supriadi, Bagdja Studio 2017
#-------------------------------------------------------------------------------
# EXAMPLE:
# ./install-lampp-ubuntu.sh
#
################################################################################
 
##fixed parameters
#openerp
echo -e "\n---- Update System ----"
sudo apt-get update
echo -e "\n---- Update installing apache ----"
sudo apt-get install apache2
echo -e "\n---- installing mysql php5  ----"
sudo apt-get install mysql-server php5-mysql
echo -e "\n---- Update System  ----"
sudo apt-get update
echo -e "\n---- Install PHP  ----"
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
echo -e "\n---- Update System  ----"
sudo apt-get update
echo -e "\n---- Install PHPMYADMIN  ----"
sudo apt-get install phpmyadmin
echo -e "\n---- SETTING UP PHPMYADMIN  ----"
sudo php5enmod mcrypt
sudo dpkg-reconfigure phpmyadmin
sudo sed -i '$ a\Include /etc/phpmyadmin/apache.conf' /etc/apache2/apache2.conf && sudo service apache2 restart
sudo apt-get install php-gettext
echo -e "\n---- installation complete  ----"
