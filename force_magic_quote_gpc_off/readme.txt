How to force magic_quote_gpc = Off

1) Using .htaccess file
   Add the following line in the end .htaccess file

   php_value magic_quotes_gpc off

   Or you may use alternative .htaccess file in this directory.


2) Using php.ini file
   Create a new file called php.ini in the same folder indexu installed.
   Add content as below:

   magic_quotes_gpc = Off

   Or you may use alternative php.ini file in this directory.   


If above methods do not work, you should contact hosting provider to turn
magic_quote_gpc off.