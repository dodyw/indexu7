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
// $lep->db->debug=true;;

///////////////////////////////////////////////////////////////////

$raw_data = $_POST['data'];
$data = json_unserialize($raw_data);

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

        seo_build_seo_title('resource', $insert_id);
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
        seo_build_seo_title('resource', $record['res_id']);
        
        print ".";
      }
    }

    break;

  default:
    # code...
    break;
}
?>