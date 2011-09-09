<?php 
  function get_rating($id) {
    global $lep;
    
    $query = "select sum(rating) from lep_comment where res_id = '$id' and status = '1'";
    $sum = $lep->db->GetOne($query);

    $query = "select count(comment_id) from lep_comment where res_id = '$id' and status = '1'";
    $num = $lep->db->GetOne($query);
    
    if ($num>0) {
      $rating = round($sum/$num);
      
      return $rating;
    }
    else {
      return 0;
    }
  }
  
  function get_rating_num($id) {
    global $lep;
    
    $query = "select count(comment_id) from lep_comment where res_id = '$id' and status = '1'";
    $num = $lep->db->GetOne($query);
    
    return $num;
  }
?>