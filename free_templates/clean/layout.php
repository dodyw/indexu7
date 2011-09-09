<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title><?php print html_head("title"); ?></title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="<?php print html_head("meta_keywords"); ?>" />
  <meta name="description" content="<?php print html_head("meta_description"); ?>" />
  
  <script type="text/javascript" src="<?php print URL; ?>lib/js/jquery.js"></script>

  <?php print html_head("css"); ?>
  <?php print html_head("js"); ?>
  <?php print html_head("custom"); ?>

  <?php include TPL_PATH."indexu.js.php"; ?>

  <link href="<?php print TPL_URL; ?>style.css" rel="stylesheet" type="text/css" />

  <!-- google one plus -->
  <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

  <base href="<?php print URL; ?>" />
</head>

<!-- initialize google map in detail page -->
<?php if (SCRIPT_ID=='detail') : ?>
  <body onload="initialize()">
<?php else : ?>
  <body>
<?php endif; ?>

<!-- facebook connect -->
<?php
  if ($lep->config['facebook_enable']) $fb->loadJsSDK();
?>

<!-- menu1 content position -->
<?php print html_content("menu1"); ?>

<!-- main content position -->
<?php print html_content("main"); ?>

<!-- sidebar content position -->
<?php print html_content("sidebar"); ?>

<!-- click counter script at the bottom of the page -->
<script src="<?php print URL; ?>click.js.php"></script>

</body>
</html>