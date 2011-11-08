<?php  

  // fix listing and review date

  require_once "db.php";

  ini_set("max_execution_time", "0");
  
  $connection = mysql_connect($db_host, $db_user, $db_pass);
  if (!$connection) {
    die("Database connection failed:" . mysql_error());
  }
   
  $db_select = mysql_select_db($db_name, $connection);
  
  /* fix now */

  $query = "select * from idx_review";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {
    $rev_date = strtotime($row['date']);

    $query = "select user_id from lep_user where username = '{$row['username']}'";
    $result2 = mysql_query($query);
    $row2 = mysql_fetch_assoc($result2);
    $user_id = $row2['user_id'];

    $query = "update lep_comment set created_at = '$rev_date}' where res_id = '{$row['link_id']}' and user_id = '{$user_id}'";
    $result2 = mysql_query($query);
  }

  $query = "select * from idx_link";
  $result = mysql_query($query);

  while ($row = mysql_fetch_assoc($result)) {
    $created_date = strtotime($row['date']);

    $query = "update lep_resource set created_at = '{$created_date}' where category_id = '{$row['category_id']}' and title = '{$row['title']}'";
    $result2 = mysql_query($query);
  }

  $debug .= "Date fixed. \n\n";

  print $debug;
?>