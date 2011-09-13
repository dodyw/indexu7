<?php  
// edit the api key

$api_key = 'sjdfsidyr984idfjsdfhsdfh';

///////////////////////////////////////////////////////////////////

if ($_POST['api_key']!=$api_key) {
  print "unauthorized used.. exiting!";
  exit;
}

include '../global.php';
include 'json.php';

// turn on/off debug mode
$lep->db->debug=true;

///////////////////////////////////////////////////////////////////

$raw_data = $_POST['data']; 

// use stripslashes if json_unserialize return no value
// $raw_data = stripslashes($raw_data);

$data = json_unserialize($raw_data);

// debug data value
// print_r($raw_data);
// print_r($data);

switch ($_POST['act']) {

  // +++++ Add listing +++++
  case 'res_add':
    if (is_array($data)) {
      foreach ($data as $k => $v) {
        $record = $v;

        $no_id = false;

        if (!$record['res_id']) {
          unset($record['res_id']);
          $no_id = true;
        }

        $record['created_at'] = mktime();
        $record['last_update'] = $record['created_at'];

        $lep->db->AutoExecute('lep_resource', $record, 'INSERT');
        
        if ($no_id) {
          $insert_id = $lep->db->Insert_ID();
        }
        else {
          $insert_id = $record['res_id'];
        }

        build_seo_title2($insert_id);
        print ".";
      }
    }

    break;
  
  // +++++ Edit listing +++++
  case 'res_edit':

    if (is_array($data)) {
      foreach ($data as $k => $v) {
        $record = $v;

        $record['last_update'] = mktime();

        $lep->db->AutoExecute('lep_resource', $record, 'UPDATE',
          "res_id = '{$record['res_id']}'");
        build_seo_title2($record['res_id']);
        
        print ".";
      }
    }

    break;

  default:
    # code...
    break;
}


function build_seo_title2($id) {
  global $lep;
  
  $query = "select title from lep_resource where res_id = '$id'";
  $title = $lep->db->GetOne($query);
  $seo_title = seo_title($title);

  $title = addslashes($title);
  
  // check duplicate seo title
  $query = "select count(res_id) from lep_resource where title = '{$title}' and res_id <> '{$id}'";
  $num_dup = $lep->db->GetOne($query);
  
  if ($num_dup) {
    $seo_title = seo_title($title).'-'.$num_dup;
  }
  
  $query = "update lep_resource set seo_title = '$seo_title' where res_id = '$id'";
  $rs = $lep->db->Execute($query);
}
?>