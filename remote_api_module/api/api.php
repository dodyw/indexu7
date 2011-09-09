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

///////////////////////////////////////////////////////////////////

$raw_data = $_POST['data'];
$data = json_unserialize($raw_data);

if (is_array($data)) {
  foreach ($data as $k => $v) {
    $record = $v;
    $record['created_at'] = mktime();
    $record['last_update'] = $record['created_at'];

    $lep->db->AutoExecute('lep_resource', $record, 'INSERT');
    $insert_id = $lep->db->Insert_ID();
    seo_build_seo_title('resource', $insert_id);
    print ".";
  }
}
?>