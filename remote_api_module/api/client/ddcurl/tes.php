<?php
  /************************************************
  ddcurl library
  by Dody Rachmat Wicaksono (dodyrw@gmail.com)
  
  version 1.0
  Nov 26 2010
  ************************************************/
  

  include "ddcurl.php";

  $url_login = 'http://www.abcwebsites.com/login.php';
  $url_clear_tpl = 'http://www.abcwebsites.com/admin/clear_templates_c.php';
  $url_restoredb = 'http://www.abcwebsites.com/admin/db_backup.php?file=demobackup.sql&pflag=res';

  $post['username'] = 'admin';
  $post['password'] = 'xmsi395dfk';
  $post['pflag'] = 'login';

  ddcurl_post($url_login,$post);
  ddcurl_fetch($url_restoredb);
  ddcurl_fetch($url_clear_tpl);
  
  print "DONE!";
?>