# createHostApache.sh
Shell Script to create a host into apache2.4 for Mac and open with Sublime Text.

For execute this script use ``sudo /path/createHostApache.sh hostName userPermissionNeed``

Pre-requisites sudo permission, "Sublime Text 3" and apache 2.4 into directory /usr/local/etc/apache2/2.4/

If use apache 2 default into mac, change path ``in line 20`` for ``/etc/apache2/extra/httpd-vhosts.conf``

This host is available to open in browser with address insered on ``hostName``  script parameter.

Example:

If i execute ``sudo /path/createHostApache.sh mysite.dev lucascasotti`` on terminal, on browser may write this ``http://mysite.dev/`` for open
