<?php 
  require_once "db.php";

  ini_set("max_execution_time", "0");
  
  $connection = mysql_connect($db_host, $db_user, $db_pass);
  if (!$connection) {
    die("Database connection failed:" . mysql_error());
  }
   
  $db_select = mysql_select_db($db_name, $connection);
  
  /*---------------------------------------------
  Step by step:
  1) Create lep tables from fresh.sql
  2) Move data : category, link, user, review
  3) Update category path & number of links -> use admin panel

  4) Manual re-setting : 
      paypal
      discount coupon
      pricing
  ---------------------------------------------*/


  /* step 1 */

  $file = 'fresh.sql';

  $lines = @file($file);    
  unset($query);

  if (is_array($lines)) {
    foreach ($lines as $k => $v) {
      $buffer = trim($v);

      if(!empty($buffer) && substr($buffer,0,1) != "#" && substr($buffer,0,2) != "--" && substr($buffer,0,2) != "/*") {
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

  /* step 2 */

  $now = time();

  /* category */

  $query = "delete from lep_category";
  $result = mysql_query($query);

  $query = "select * from idx_category";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {

    $query = "insert  into `lep_category`(`category_id`,`parent_id`,`order_num`,`title`,`status`,`path`,`path_url`,`parents`,`description`,`meta_keyword`,`seo_title`,`has_child`,`num_res`,`created_at`) values ({$row['category_id']},{$row['parent_id']},{$row['order_num']},'{$row['name']}','1','','','','{$row['description']}','{$row['meta_keyword']}','','',0,'{$now}')";

    $result2 = mysql_query($query);
  }

  $debug .= "Category table imported. \n\n";

  /* user */

  $query = "delete from lep_user";
  $result = mysql_query($query);

  $query = "select * from idx_users";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {
    $passwd = md5(md5($row['password']));

    $query = "INSERT INTO `lep_user` 
      ( 
      `username`, 
      `password`, 
      `email`, 
      `status`, 
      `code`, 
      `created_at`, 
      `first_name`, 
      `last_name`
      )
      VALUES
      (
      '{$row['username']}', 
      '{$passwd}', 
      '{$row['email']}', 
      '1', 
      '', 
      '{$now}', 
      '{$row['name']}', 
      ''
      )";

    $result2 = mysql_query($query);
  }

  $debug .= "User table imported. \n\n";


  /* review */

  $query = "select * from idx_review";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {
    $rev_date = strtotime($row['date']);

    $query = "select user_id from lep_user where username = '{$row['username']}'";
    $result2 = mysql_query($query);
    $row2 = mysql_fetch_assoc($result2);
    $user_id = $row2['user_id'];

    $query = "INSERT INTO `lep_comment` 
      ( 
      `res_id`, 
      `user_id`, 
      `comment`, 
      `status`, 
      `created_at`, 
      `subject`, 
      `rating`
      )
      VALUES
      (
      '{$row['link_id']}', 
      '{$user_id}', 
      '{$row['review']}', 
      '{$row['status']}', 
      '{$date}', 
      '{$row['subject']}', 
      '{$row['rating']}'
      )
    ";

    $result2 = mysql_query($query);
  }

  $debug .= "Review table imported. \n\n";


  /* links and custom fields */
  // get all custom fields, if not exist in lep_resource_field, then add new one

  $query = "select * from lep_resource_field";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {
    $lep_fields[] = $row['name'];  
  }

  $idx_fields = array('title','url','description','keywords','contact_name','email','reciprocal_url');

  $query = "select * from idx_custom_field";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {
    $idx_fields[] = $row['field_name'];

    if (!in_array($row['field_name'],$lep_fields)) {

      if ($row['permission']=='2') {
        $admin_only = '1';  
      }
      else {
        $admin_only = '0';
      }

      //text, textarea, select, multiselect, checkbox, radio, file, image, date, datetime, richeditor

      //inputText, inputPassword, textarea, inputCheckbox, inputRadio, select, multiselect, inputFile, richtext, date

      if ($row['field_type']=='TEXT') {
        $field_type = 'inputText';
      }
      elseif ($row['field_type']=='TEXTAREA') {
        $field_type = 'textarea';
      }
      elseif ($row['field_type']=='SELECT') {
        $field_type = 'select';
      }
      elseif ($row['field_type']=='MULTISELECT') {
        $field_type = 'multiselect';
      }
      elseif ($row['field_type']=='CHECKBOX') {
        $field_type = 'inputCheckbox';
      }
      elseif ($row['field_type']=='RADIO') {
        $field_type = 'inputRadio';
      }
      elseif ($row['field_type']=='FILE') {
        $field_type = 'inputFile';
      }
      elseif ($row['field_type']=='IMAGE') {
        $field_type = 'inputFile';
      }
      elseif ($row['field_type']=='DATE') {
        $field_type = 'date';
      }
      elseif ($row['field_type']=='DATETIME') {
        $field_type = 'date';
      }
      elseif ($row['field_type']=='RICHEDITOR') {
        $field_type = 'richtext';
      }

      $query = "INSERT INTO `lep_resource_field` 
        ( 
        `name`, 
        `text`, 
        `type`, 
        `val`, 
        `default_val`, 
        `order_num`, 
        `admin_only`
        )
        VALUES
        (
        '{$row['field_name']}', 
        '{$row['field_text']}', 
        '{$field_type}', 
        '{$row['field_option']}', 
        'default_val', 
        '100', 
        '{$admin_only}'
        )";

      $result2 = mysql_query($query);

      $query = "ALTER TABLE `lep_resource` ADD COLUMN `{$row['field_name']}` VARCHAR(255) DEFAULT '' NULL";

      $result2 = mysql_query($query);

      ($result2) ? $res = "<span style='color:#00f;'>OK</span>" : $res = "<span style='color:#f00;'>FAILED</span>";
    
      $debug .= htmlentities($query) . "... $res \n\n";    
    }
  }

  // import links now

  $query = "select * from idx_link";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {

    unset($query_fname);
    unset($query_fval);

    $query = "INSERT INTO `lep_resource` "; 

    foreach ($idx_fields as $k => $v) {
      $f_value =  $row[$v];

      if ($v=='keywords') {
        $f_name = 'tag';
      }
      elseif ($v=='contact_name') {
        $f_name = 'owner_name';
      }
      elseif ($v=='date') {
        $f_name = 'created_at';
        $f_value = strtotime($v);
      }
      else {
        $f_name = $v;
      }

      $query_fname[] = $f_name;
      $query_fval[]  = "'".addslashes($f_value)."'";
    }

    $query_fname[] = 'category_id';
    $query_fval[] = $row['category_id'];

    if (!$row['hits']) $row['hits'] = 0;
    
    $query_fname[] = 'hits';
    $query_fval[] = $row['hits'];

    $query_fname[] = 'listing_type';
    $query_fval[] = "'basic'";

    $query_temp2 = implode(',',$query_fname);
    $query_temp3 = implode(',',$query_fval);

    $query .= "($query_temp2) values ($query_temp3)";
    $result2 = mysql_query($query);

    ($result2) ? $res = "<span style='color:#00f;'>OK</span>" : $res = "<span style='color:#f00;'>FAILED</span>";
    
    $debug .= htmlentities($query) . "... $res \n\n";
  }

  $debug .= "Link table imported. \n\n";

  
  // apply setting
  
  // $theme_path             = $base_path . "themes/";
  // $admin_template_path    = $base_path . "admin_tpl/";
  // $plugin_path            = $base_path . "plugin/";
  
  
  // $query = "update idx_setting set setting_value = '$site_url' where setting_name = 'site_url'";   
  // $result = mysql_query($query, $connection);
  
  // $query = "update idx_setting set setting_value = '$email_address' where setting_name = 'email_address'"; 
  // $result = mysql_query($query, $connection);
  
  // $query = "update idx_setting set setting_value = '$theme_path' where setting_name = 'theme_path'"; 
  // $result = mysql_query($query, $connection);
  
  // $query = "update idx_setting set setting_value = '$admin_template_path' where setting_name = 'admin_template_path'"; 
  // $result = mysql_query($query, $connection);
  
  // $query = "update idx_setting set setting_value = '$plugin_path' where setting_name = 'plugin_path'"; 
  // $result = mysql_query($query, $connection); 
  
?>
  
  <!DOCTYPE html>
  <html lang="en">
  
  <head>
    <meta charset="utf-8">
    <title>Indexu Database Migration</title>
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
