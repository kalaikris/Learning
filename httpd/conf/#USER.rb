

#USER 
User apache
Group apache

#VIRTUAL HOST
# CHANGE THE LISTEN INTO IP ADDRESS OF THR SEVER 
Listen 80
ServerName www.example.com:80
DocumentRoot "/var/www/html"
#This address appears on some server-generated pages, such
# as error documents.  e.g. admin@your-domain.com
ServerAdmin root@localhost


<Directory "/var/www/html">
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all granted
</Directory>
<Directory "/var/www">
    AllowOverride All
    Require all granted
</Directory>





<Directory />
    AllowOverride All
    Require all denied
</Directory>
