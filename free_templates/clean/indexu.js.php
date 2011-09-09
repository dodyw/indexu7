  <?php
    if ($lep->config['ajax_category']) :
  ?>

<script type="text/javascript">

$(document).ready(function(){  
    $("#cat_drop_down").ready(function() { 
        $.get("ajax.php?act=generate_category_drop_down&id="+$("#cat_drop_down_init_val").html()+"&name="+$("#cat_drop_down_name").html(), function(data){
          $("#cat_drop_down").html(data);
        });
    });  
    $("#cat_drop_down").change(function() { 
        $.get("ajax.php?act=generate_category_drop_down&id="+$("#cat_drop_down :selected").val()+"&name="+$("#cat_drop_down_name").html(), function(data){
          $("#cat_drop_down").html(data);
        });
    });  
  });   
</script>
  <?php endif; ?>

	<?php
    if (is_array($lep->richtext_element)) :
      $rt_elements = implode(',',$lep->richtext_element);
    
  ?>
  <script type="text/javascript" src="<?php print  URL; ?>/lib/tiny_mce/tiny_mce.js"></script>
  <script type="text/javascript">
    tinyMCE.init({
	    mode : "exact",
	    entity_encoding : "named",
	    cleanup : "true",
	    theme : "advanced",
	    theme_advanced_toolbar_align : "left",
	    theme_advanced_toolbar_location : "top",
	    theme_advanced_statusbar_location : "bottom",
	    content_css : "<?php print  URL ?>admin/templates/editor.css",	    
			invalid_elements : "applet",
			extended_valid_elements : "a[class|name|href|target|title|onclick|rel],img[class|src|border=0|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name],,hr[id|title|alt|class|width|size|noshade]",
	    plugins : "emotions,fullscreen,",
	    theme_advanced_buttons3_add: "emotions,fullscreen",
	    elements : "<?php print $rt_elements; ?>",
      fullscreen_settings : {
				theme_advanced_path_location : "top"
			}	    
    });

		function toggleEditor(id) {
			if (!tinyMCE.get(id)) {
				tinyMCE.execCommand('mceAddControl', false, id);
				$('#'+id).attr('class','richtext');
			}
			else {
				tinyMCE.execCommand('mceRemoveControl', false, id);
				$('#'+id).attr('class','textarea');
			}
		}
  </script>
  <?php endif; ?>
  
  <?php
    if (is_array($lep->date_element)) :
    
  ?>
  
  <link rel="stylesheet" type="text/css" href="<?php print  URL; ?>lib/datepicker/datePicker.css" media="screen">
  <script type="text/javascript" src="<?php print  URL; ?>lib/datepicker/date.js"></script>
  <script type="text/javascript" src="<?php print  URL; ?>lib/datepicker/jquery.datePicker.js"></script>
  <script type="text/javascript">
    Date.firstDayOfWeek = 7;
    Date.format = 'mm/dd/yyyy';
    $(function()
    {
	    $('.date').datePicker({startDate:'01/01/1996'});
    });
  </script>
  <?php endif; ?>