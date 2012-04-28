=========================
Indexu Database Migration
From: Indexu Deluxe 2.4
To  : Indexu 7.0

V.1.0 ~ August 25, 2011
=========================

Use this script to upgrade database from Indexu Deluxe 2.4 to Indexu 7.0.
Run this script before perform Indexu 7.0 installation. 

  
INSTALLATION
============

1) Edit db.php
2) Fill the database information

      $db_user = 'root';
      $db_pass = 'root';
      $db_name = 'indexu';
      $db_host = 'localhost'; 
            
3) Upload indexu_54_to_indexu_deluxe_24 folder. This script is independent from indexu installation, feel free to upload in any locations.

4) Run the index.php from browser.

5) Now the database updated. Use phpmyadmin, edit configuration value in lep_config, edit url field to new location (http://www.domain.tld/). Make sure to add slash.

6) Then reset the admin password to 'admin'. Edit lep_user, edit user 'admin', set the password to 
   c3284d0f94606de1fd2af172aba15bf3 or run the following sql query:

   UPDATE lep_user SET password = 'c3284d0f94606de1fd2af172aba15bf3' WHERE username ='admin'
   
7) Login into indexu 7 admin panel. Update the category path (admin panel / categories / update category path).

8) Update number of links (admin panel / links / update number of links).


If you have any problems or need other indexu version, send me an email at support@nicecoder.com


=========
Important
=========

In order to keep the database structure updated to the latest version, we need to update the database using phpmyadmin.
Open /install/fresh.sql, locate: 

/** INDEXU 7.1 **/

Then copy all text below that line until end of line and paste in phpmyadmin. Execute the sql queries at once.





NOTE: If you have function_widget.php error, run this query in phpmyadmin

ALTER TABLE  `lep_widget_placement` ADD  `status` CHAR( 1 ) NOT NULL


To fix checkbox group:

ALTER TABLE `lep_category_field` CHANGE `type` `type` ENUM( 'inputText', 'inputPassword', 'textarea', 'inputCheckbox', 'inputRadio', 'select', 'selectmulti', 'inputFile', 'richtext', 'date', 'inputCheckboxmulti', 'inputCheckboxDynamic' ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'inputText';
ALTER TABLE `lep_resource_field` CHANGE `type` `type` ENUM( 'inputText', 'inputPassword', 'textarea', 'inputCheckbox', 'inputRadio', 'select', 'selectmulti', 'inputFile', 'richtext', 'date', 'inputCheckboxmulti', 'inputCheckboxDynamic' ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'inputText';
ALTER TABLE `lep_user_field` CHANGE `type` `type` ENUM( 'inputText', 'inputPassword', 'textarea', 'inputCheckbox', 'inputRadio', 'select', 'selectmulti', 'inputFile', 'richtext', 'date', 'inputCheckboxmulti', 'inputCheckboxDynamic' ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'inputText';
ALTER TABLE `lep_comment_field` CHANGE `type` `type` ENUM( 'inputText', 'inputPassword', 'textarea', 'inputCheckbox', 'inputRadio', 'select', 'selectmulti', 'inputFile', 'richtext', 'date', 'inputCheckboxmulti', 'inputCheckboxDynamic' ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'inputText';
