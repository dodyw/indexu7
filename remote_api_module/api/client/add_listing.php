<?php 

include 'json.php';
include 'ddcurl/ddcurl.php';

// construct data 
// res_id is optional, if not available the value is autoincreament

$data[0]['res_id'] = '155';
$data[0]['url'] = 'http://www.google.com';
$data[0]['title'] = 'tes data';
$data[0]['category_id'] = '1';
$data[0]['description'] = 'tes desc';

$data[1]['res_id'] = '157';
$data[1]['url'] = 'http://www.google2.com';
$data[1]['title'] = 'tes data2';
$data[1]['category_id'] = '1';
$data[1]['description'] = "tes desc2's \nsdo";

$data[2]['res_id'] = '198';
$data[2]['url'] = 'http://www.google3.com';
$data[2]['title'] = 'tes data3';
$data[2]['category_id'] = '12';
$data[2]['description'] = "tes desc3\"dsfj'dfdfd";

$out = json_serialize($data);

// send data with curl

$api_url = 'http://localhost/indexu_api/api/api.php';
$post['api_key'] = 'sjdfsidyr984idfjsdfhsdfh';
$post['act'] = 'res_add';
$post['data'] = $out;

$result = ddcurl_post($api_url,$post);
print $result;
?>
<p>Done.</p>