<?php  

  require_once "db.php";

  ini_set("max_execution_time", "0");
  
  $connection = mysql_connect($db_host, $db_user, $db_pass);
  if (!$connection) {
    die("Database connection failed:" . mysql_error());
  }
   
  $db_select = mysql_select_db($db_name, $connection);
  
  /* category */

  $query = "delete from lep_category";
  $result = mysql_query($query);

  $query = "select * from idx_category";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {

    foreach ($row as $k => $v) {
      $row[$k] = addslashes($row[$k]);
    }

    $query = "insert  into `lep_category`(`category_id`,`parent_id`,`order_num`,`title`,`status`,`path`,`path_url`,`parents`,`description`,`meta_keyword`,`seo_title`,`has_child`,`num_res`,`created_at`) values ({$row['category_id']},{$row['parent_id']},{$row['order_num']},'{$row['name']}','1','','','','{$row['description']}','{$row['meta_keyword']}','','',0,'{$now}')";

    $result2 = mysql_query($query);
  }

  $debug .= "Category table imported. \n\n";
  print $debug;
?>