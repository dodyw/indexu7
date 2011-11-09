How to force magic_quote_gpc = Off
==================================

1) Using .htaccess file
   Add the following line in the end .htaccess file

   php_value magic_quotes_gpc off

   Or you may use alternative .htaccess file in this directory.


2) Using php.ini file
   Create a new file called php.ini in the same folder indexu installed.
   Add content as below:

   magic_quotes_gpc = Off

   Or you may use alternative php.ini file in this directory.   

3) Add the following codes in config.php

    if (get_magic_quotes_gpc() === 1) {
      $_GET = json_decode(stripslashes(json_encode($_GET, JSON_HEX_APOS)), true);
      $_POST = json_decode(stripslashes(json_encode($_POST, JSON_HEX_APOS)), true);
      $_COOKIE = json_decode(stripslashes(json_encode($_COOKIE, JSON_HEX_APOS)), true);
      $_REQUEST = json_decode(stripslashes(json_encode($_REQUEST, JSON_HEX_APOS)), true);
    }



If above methods do not work, you should contact hosting provider to turn
magic_quote_gpc off.