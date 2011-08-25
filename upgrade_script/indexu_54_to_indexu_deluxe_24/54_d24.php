<?php 
  require_once "db.php";
  
  $connection = mysql_connect($db_host, $db_user, $db_pass);
  if (!$connection) {
    die("Database connection failed:" . mysql_error());
  }
   
  $db_select = mysql_select_db($db_name, $connection);
  
  $file = 'indexu54_to_deluxe_24.sql';

  $lines = @file($file);    
  unset($query);

  if (is_array($lines)) {
    foreach ($lines as $k => $v) {
      $buffer = trim($v);

      if(!empty($buffer) && substr($buffer,0,1) != "#" && substr($buffer,0,2) != "--") {
        if(substr($buffer,-1,1)==";") {
          $query .= $v;
          $result = mysql_query($query, $connection);
          
          ($result) ? $res = "<span style='color:#00f;'>OK</span>" : $res = "<span style='color:#f00;'>FAILED</span>";
          
          $debug .= htmlentities($query) . "... $res \n\n";
          
          unset($query);
        }
        else {
          $query .= $v;
        }
      }
    }         
  }
  
  // apply setting
  
  $theme_path             = $base_path . "themes/";
  $admin_template_path    = $base_path . "admin_tpl/";
  $plugin_path            = $base_path . "plugin/";
  
  
  $query = "update idx_setting set setting_value = '$site_url' where setting_name = 'site_url'";   
  $result = mysql_query($query, $connection);
  
  $query = "update idx_setting set setting_value = '$email_address' where setting_name = 'email_address'"; 
  $result = mysql_query($query, $connection);
  
  $query = "update idx_setting set setting_value = '$theme_path' where setting_name = 'theme_path'"; 
  $result = mysql_query($query, $connection);
  
  $query = "update idx_setting set setting_value = '$admin_template_path' where setting_name = 'admin_template_path'"; 
  $result = mysql_query($query, $connection);
  
  $query = "update idx_setting set setting_value = '$plugin_path' where setting_name = 'plugin_path'"; 
  $result = mysql_query($query, $connection); 
  
?>
  
  <!DOCTYPE html>
  <html lang="en">
  
  <head>
    <meta charset="utf-8">
    <title>Indexu DB Upgrade</title>
    <style>
      html {
        font-family: verdana;
        font-size: 12px;
      }
      h1 {
        font-size: 18px;
      }
      .explain {
        margin: 20px;
        padding: 10px;
        border: 1px solid #000;
        background: #ffc;
      }
      .debug {
        font-size: 9px;
        font-weight: normal;
      }
    </style>
  </head>
  <body>
    <h1>Indexu Database Migration</h1>
    
    Database upgraded.
    
    <h1>Debug</h1>
    
    <div class="debug">
      <?php print nl2br($debug); ?>
    </div>
    
  </body>
  </html>
