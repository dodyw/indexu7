=========================
Indexu Database Migration
From: Indexu Deluxe 2.4
To  : Indexu 7.0

V.1.0 ~ August 25, 2011
=========================

Use this script to upgrade database from Indexu Deluxe 2.4 to Indexu 7.0.

  
INSTALLATION
============

1) Edit db.php
2) Fill the database information

      $db_user = 'root';
      $db_pass = 'root';
      $db_name = 'indexu5';
      $db_host = 'localhost'; 

3) Fill the directory information from application.php file.

      $site_url  = "http://www.indexu5.lo";
      $base_path = "/www/indexu5/";
      $site_name = "indexu5 demo";
      
4) Upload indexu_54_to_indexu_deluxe_24 folder. This script is independent from indexu installation, feel free to upload in any locations.

5) Run the index.php from browser.



If you have any problems or need other indexu version, send me an email at support@nicecoder.com
