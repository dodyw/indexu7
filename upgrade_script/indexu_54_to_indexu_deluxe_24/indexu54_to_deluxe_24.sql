#################
#      _54
#################

#  
# Table structure for table 'idx_email_template' 
#  

DROP TABLE IF EXISTS `idx_email_template`;
CREATE TABLE `idx_email_template` (
  `email_template_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `subject` varchar(255) default NULL,
  `body` text,
  `altbody` text,
  PRIMARY KEY  (`email_template_id`)
);

#  
# Dumping data for table 'idx_email_template' 
#  

insert  into `idx_email_template`(`email_template_id`,`name`,`subject`,`body`,`altbody`) values (1,'add_ok','Resource Added','<div style=\"font-weight:bold;\">Thank you for your submission to <%$site_name%></div>\r\n<p>\r\n<div style=\"float:left;width:200px;\">Resource ID</div>\r\n<div style=\"float:left;width:10px;\"> : </div>\r\n<div style=\"float:left;width:200px;\"><%$link_id%></div>\r\n<div style=\"float:left;width:200px;\">Title</div>\r\n<div style=\"float:left;width:10px;\"> : </div>\r\n<div style=\"float:left;width:200px;\"><%$title%></div>\r\n<div style=\"float:left;width:200px;\">Url</div>\r\n<div style=\"float:left;width:10px;\">  : </div>\r\n<div style=\"float:left;width:200px;\"><%$url%></div>\r\n<div style=\"float:left;width:200px;\">Description </div>\r\n<div style=\"float:left;width:10px;\"> : </div>\r\n<div style=\"float:left;width:200px;\"><%$description%></div>\r\n<div style=\"float:left;width:200px;\">Category </div>\r\n<div style=\"float:left;width:10px;\"> : </div>\r\n<div style=\"float:left;width:200px;\"><%$category%></div>\r\n<div style=\"float:left;width:200px;\">Contact name</div>\r\n<div style=\"float:left;width:10px;\"> : </div>\r\n<div style=\"float:left;width:200px;\"><%$contact_name%></div>\r\n<div style=\"float:left;width:200px;\">Email</div>\r\n<div style=\"float:left;width:10px;\">  : </div>\r\n<div style=\"float:left;width:200px;\"><%$email%></div>\r\n<div style=\"float:left;width:200px;\">Password </div>\r\n<div style=\"float:left;width:10px;\"> : </div>\r\n<div style=\"float:left;width:200px;\"><%$password%></div>\r\n<p>\r\nYour link has been added.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<%$site_name%> Team\r\n','Thank you for your submission to <%$site_name%>\r\nResource ID  : <%$link_id%>\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nPassword     : <%$password%>\r\nYour link has been added.\r\nRegards,\r\n<%$site_name%> Team'),(2,'add_ok_editor','Resource Added','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new submission to <b><%$site_name%></b>.\r\n<p>\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Resource ID</td><td style=\"width:10px;\">:</td><td ><%$link_id%></td></tr>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email/td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\nThe category permissions allow webmasters to add/modify links without needing approval.\r\nThe link has been added.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<%$site_name%> Team\r\n</div>','There\'s a new submission to <%$site_name%>.\r\nResource ID  : <%$link_id%>\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nThe category permissions allow webmasters to add/modify links without needing approval.\r\nThe link has beed added.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(3,'add_ok_subscriber','Resource Added','<div style=\"font-family:arial;font-size:12px;\">\r\nYou are receiving this email because you have a subscription for update notifications in <b><%$category%></b> category.\r\n<p>\r\nThere\'s a new submission to <b><%$site_name%><b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Resource ID</td><td style=\"width:10px;\">:</td><td ><%$link_id%></td></tr>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','You are receiving this email because you have a subscription for update notifications in <%$category%> category.\r\nThere\'s a new submission to <%$site_name%>.\r\nResource ID  : <%$link_id%>\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(4,'add_pending','Pending Resource','<div style=\"font-family:arial;font-size:12px;\">\r\nThank you for your submission to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nYour link will be reviewed by our team. We will contact you as soon <br>\r\nas we have reviewed your link.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Thank you for your submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nYour link will be reviewed by our team. We will contact you as soon \r\nas we have reviewed your link.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(5,'add_pending_editor','Pending Resource','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new submission to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nYou need to review this link here:<br>\r\n<label style=\"margin-left:10px;\"><a href=\"<%$site_url%>/cp/editor_link_validate.php\"><%$site_url%>/cp/editor_link_validate.php</a></label>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>\r\n','There\'s a new submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nYou need to review this link here:\r\n<%$site_url%>/cp/editor_link_validate.php\r\nRegards,\r\n<%$site_name%> Team\r\n'),(6,'approved','Editor Approved.','<div style=\"font-family:arial;font-size:12px;\">\r\nYour submission at <b><%$site_name%></b> has been approved.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Resource ID</td><td style=\"width:10px;\">:</td><td ><%$link_id%></td></tr>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n<tr><td style=\"width:100px;\">Password </td><td style=\"width:10px;\">:</td><td ><%$password%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Your submission at <%$site_name%> has been approved.\r\nResource ID  : <%$link_id%>\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nPassword     : <%$password%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(7,'approved_editor','Link approved','<div style=\"font-family:arial;font-size:12px;\">\r\nThe following submission has been approved.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Resource ID</td><td style=\"width:10px;\">:</td><td ><%$link_id%></td></tr>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','The following submission has been approved.\r\nResource ID  : <%$link_id%>\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(8,'approved_subscriber','link_approved','<div style=\"font-family:arial;font-size:12px;\">\r\nYou are receiving this email because you have a subscription for update notifications in <b><%$category%></b> category.\r\n<p>\r\nThe following submission has been approved.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Resource ID</td><td style=\"width:10px;\">:</td><td ><%$link_id%></td></tr>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','You are receiving this email because you have a subscription for update notifications in <%$category%> category.\r\nThe following submission has been approved.\r\nResource ID  : <%$link_id%>\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(9,'bad_link_editor','Broken link report','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new bad link report submission to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Name</td><td style=\"width:10px;\">:</td><td ><%$r_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n<tr><td style=\"width:100px;\">Error type</td><td style=\"width:10px;\">:</td><td ><%$type_val%></td></tr>\r\n</table>\r\n<p>\r\nThis report has been added in your administrator area.<br>\r\nPlease review this report here:<br>\r\n<a href=\"<%$site_url%>/admin/link_bad.php\"><%$site_url%>/admin/link_bad.php</a>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','There\'s a new bad link report submission to <%$site_name%>.\r\nTitle       : <%$title%>\r\nUrl         : <%$url%>\r\nDescription : <%$description%>\r\nCategory    : <%$category%>\r\nName        : <%$r_name%>\r\nEmail       : <%$r_email%>\r\nError type  : <%$type_val%>\r\nThis report has been added in your administrator area.\r\nPlease review this report here:\r\n<%$site_url%>/admin/link_bad.php\r\nRegards,\r\n<%$site_name%> Team\r\n'),(10,'become_editor_approved','Editor Approved.','<div style=\"font-family:arial;font-size:12px;\">\r\nYour request to become an editor at <b><%$site_name%></b> has been approved.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Name </td><td style=\"width:10px;\">:</td><td ><%$name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n<tr><td style=\"width:100px;\">Category </td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Your request to become an editor at <%$site_name%> has been approved.\r\nUsername  : <%$username%>\r\nName      : <%$name%>\r\nEmail     : <%$email%>\r\nCategory  : <%$category%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(11,'become_editor_pending','Request to become an editor','<div style=\"font-family:arial;font-size:12px;\">\r\nThank you for your request to become an editor at <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Name </td><td style=\"width:10px;\">:</td><td ><%$name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n<tr><td style=\"width:100px;\">Category </td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n</table>\r\n<p>\r\nYour request will be processed soon.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Thank you for your request to become an editor at <%$site_name%>.\r\nUsername  : <%$username%>\r\nName      : <%$name%>\r\nEmail     : <%$email%>\r\nCategory  : <%$category%>\r\nYour request will be processed soon.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(12,'become_editor_pending_admin','Request to become an editor','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new request to become an editor at <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Name </td><td style=\"width:10px;\">:</td><td ><%$name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n<tr><td style=\"width:100px;\">Category </td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n</table>\r\n<p>\r\nPlease review editor request here:\r\n  <label style=\"margin-left:10px;\"><a href=\"<%$site_url%>/admin/index.php\"><%$site_url%>/admin/index.php</a></label>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','There\'s a new request to become an editor at <%$site_name%>.\r\nUsername  : <%$username%>\r\nName      : <%$name%>\r\nEmail     : <%$email%>\r\nCategory  : <%$category%>\r\nPlease review editor requests here:\r\n<%$site_url%>/admin/index.php\r\nRegards,\r\n<%$site_name%> Team\r\n'),(13,'become_editor_rejected','Editor Rejected.','<div style=\"font-family:arial;font-size:12px;\">\r\nYour request to become an editor at <b><%$site_name%></b> has been rejected.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Name </td><td style=\"width:10px;\">:</td><td ><%$name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n<tr><td style=\"width:100px;\">Category </td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Your request to become an editor at <%$site_name%> has been rejected.\r\nUsername  : <%$username%>\r\nName      : <%$name%>\r\nEmail     : <%$email%>\r\nCategory  : <%$category%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(14,'inv_ask_payment','<%$company%>, Invoice #<%$invoice_id%>','<div style=\"font-family:arial;font-size:12px;\">\r\nAn invoice has been created, and is available for viewing at the following URL:<br>\r\n<label><a href=\"<%$site_url%>/invoice.php?id=<%$invoice_id%>\"><%$site_url%>/invoice.php?id=<%$invoice_id%></a></label>\r\n<p>\r\nIf you should have any questions, please do not hesitate to contact us.<br>\r\nThank you for your business.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','An invoice has been created, and is available for viewing at the following URL:\r\n<%$site_url%>/invoice.php?id=<%$invoice_id%>\r\nIf you should have any questions, please do not hesitate to contact us.\r\nThank you for your business.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(15,'mailing_list_sub','Mailing list subscription','<div style=\"font-family:arial;font-size:12px;\">\r\nThank you. Your email address, <b><%$email%></b> has been added to our mailing list.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<%$site_name%> Team\r\n</div>','Thank you. Your email address, <%$email%> has been added to our mailing list.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(16,'mailing_list_sub_confirm','Mailing list validation code','<div style=\"font-family:arial;font-size:12px;\">\r\nWe received your subscription request onto our mailing list.<br>\r\nPlease confirm your subscription here:<br>\r\n<label style=\"margin-left:50px;\"><a href=\"<%$confirm_url%>\"><%$confirm_url%></a></label>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','We received your subscription request onto our mailing list.\r\nPlease confirm your subscription here:\r\n<%$confirm_url%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(17,'modify_ok','Resource Modified','<div style=\"font-family:arial;font-size:12px;\">\r\nThank you for your submission to <b><%$site_name%></b>.\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email/td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\nYour link has been changed.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Thank you for your submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nYour link has been changed.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(18,'modify_ok_editor','Resource Modified','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nThe category permissions allow webmasters to add/modify links without approval.\r\nThe link has been modified.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','There\'s a new submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nThe category permissions allow webmasters to add/modify links without approval.\r\nThe link has been modified.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(19,'modify_ok_subscriber','Resource Modified','<div style=\"font-family:arial;font-size:12px;\">\r\nYou are receiving this email because you have a subscription for update notifications in <b><%$category%></b> category.\r\n<p>\r\nThere\'s a new submission to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','You are receiving this email because you have a subscription for update notifications in <%$category%> category.\r\nThere\'s a new submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(20,'modify_pending','Resource Modified','<div style=\"font-family:arial;font-size:12px;\">\r\nThank you for your submission to <b><%$site_name%><b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\nYour link will be reviewed by our team. We will contact you as soon <br>\r\nas we have reviewed your link.\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Thank you for your submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nYour link will be reviewed by our team. We will contact you as soon \r\nas we have reviewed your link.\r\nRegards,\r\n<%$site_name%> Team\r\n'),(21,'modify_pending_editor','Resource Modified','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new submission to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nYou need to review this link here:<br>\r\n<label style=\"margin-left:10px;\"><a href=\"<%$site_url%>/cp/editor_link_validate.php\"><%$site_url%>/cp/editor_link_validate.php</a></label>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>\r\n','There\'s a new submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nYou need to review this link here:\r\n<%$site_url%>/cp/editor_link_validate.php\r\nRegards,\r\n<%$site_name%> Team\r\n'),(22,'register_confirm','Registration','<div style=\"font-family:arial;font-size:12px;\">\r\nThanks for joining <b><%$site_name%><b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Password</td><td style=\"width:10px;\">:</td><td ><%$password%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nPlease confirm your registration here:<br>\r\n<label style=\"margin-left:10px;\"><A href=\"<%$site_url%>/register.php?u=<%$username%>&v=<%$vcode%>&pflag=cf\"><%$site_url%>/register.php?u=<%$username%>&v=<%$vcode%>&pflag=cf</a></label>\r\n<p>\r\n<p>\r\nSincerely,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Thanks for joining <%$site_name%>.\r\nUsername : <%$username%>\r\nPassword : <%$password%>\r\nPlease confirm your registration here:\r\n<%$site_url%>/register.php?u=<%$username%>&v=<%$vcode%>&pflag=cf\r\nSincerely,\r\n<%$site_name%> Team\r\n'),(23,'register_ok','Registration','<div style=\"font-family:arial;font-size:12px;\">\r\nThanks for joining <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Password</td><td style=\"width:10px;\">:</td><td ><%$password%></td></tr>\r\n</table>\r\n<p>\r\nSincerely,\r\n<p>\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Thanks for joining <%$site_name%>.\r\nUsername : <%$username%>\r\nPassword : <%$password%>\r\nSincerely,\r\n<%$site_name%> Team\r\n'),(24,'rejected','Your submission has been rejected','<div style=\"font-family:arial;font-size:12px;\">\r\nYour submission has been rejected.<br>\r\nThis may be caused by one of the following reason:\r\n<p>\r\n<ul>\r\n<li>adult material</li>\r\n<li>the site is under construction</li>\r\n<li>the topic is not related with our directory</li>\r\n</ul>\r\n</p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email/td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Your submission has been rejected.\r\nThis may caused by one of the following reasons:\r\n- adult material\r\n- the site is under construction\r\n- the topic is not related with our directory\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(25,'rejected_editor','Link rejected','<div style=\"font-family:arial;font-size:12px;\">\r\nThe following submission has been rejected.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n<tr><td style=\"width:100px;\">Contact name</td><td style=\"width:10px;\">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style=\"width:100px;\">Email</td><td style=\"width:10px;\">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>\r\n','The following submission has been rejected.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(26,'review_pending_editor','Pending Review','<div style=\"font-family:arial;font-size:12px;\">\r\nThere\'s a new review to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n<tr><td style=\"width:100px;\">Category</td><td style=\"width:10px;\">:</td><td ><%$category%></td></tr>\r\n</table>\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Subject</td><td style=\"width:10px;\">:</td><td ><%$rev_subject%></td></tr>\r\n<tr><td style=\"width:100px;\">Rating</td><td style=\"width:10px;\">:</td><td ><%$rev_rating%></td></tr>\r\n<tr><td style=\"width:100px;\">Review</td><td style=\"width:10px;\">:</td><td ><%$rev_review%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nPlease review it here:<br>\r\n<label style=\"margin-left:10px;\"><a href=\"<%$site_url%>/cp/\"><%$site_url%>/cp/</a></label>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>\r\n','There\'s new review to <%$site_name%>.\r\nTitle       : <%$title%>\r\nUrl         : <%$url%>\r\nDescription : <%$description%>\r\nCategory    : <%$category%>\r\nUsername    : <%$username%>\r\nSubject     : <%$rev_subject%>\r\nRating      : <%$rev_rating%>\r\nReview      : <%$rev_review%>\r\nPlease review it here:\r\n<%$site_url%>/cp/\r\nRegards,\r\n<%$site_name%> Team\r\n'),(27,'send_pwd_link','Your resource password','<div style=\"font-family:arial;font-size:12px;\">\r\nHere is your password for <b><%$title%></b> (<a href=\"<%$url%>\"><%$url%></a>)\r\n<p>\r\nPassword : <%$password%>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Here is your password for <%$title%> (<%$url%>)\r\nPassword : <%$password%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(28,'send_pwd_login','Your login password','<div style=\"font-family:arial;font-size:12px;\">\r\nHere is your username and password:\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Username</td><td style=\"width:10px;\">:</td><td ><%$username%></td></tr>\r\n<tr><td style=\"width:100px;\">Password</td><td style=\"width:10px;\">:</td><td ><%$password%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Here is your username and password:\r\nUsername : <%$username%>\r\nPassword : <%$password%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(29,'send_pwd_reset','Password reset request','<div style=\"font-family:arial;font-size:12px;\">\r\nWe received a request to reset your password.<br>\r\nPlease visit this URL to proceed:<br>\r\n<label style=\"margin-left:10px;\"><a href=\"<%$site_url%>/reset_pwd.php?u=<%$username%>&hash=<%$hash%>\"><%$site_url%>/reset_pwd.php?u=<%$username%>&hash=<%$hash%></a></label>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','We received a request to reset your password.\r\nPlease visit this URL to proceed:\r\n<%$site_url%>/reset_pwd.php?u=<%$username%>&hash=<%$hash%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(30,'suggest_category','Category suggestion','<div style=\"font-family:arial;font-size:12px;\">\r\nCategory suggestion for <b><%$site_name%></b>.\r\n<p>\r\nParent               : <%$parent%>\r\nCategory Name        : <%$cat_name%>\r\nCategory Description : <%$cat_desc%>\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>','Category suggestion for <%$site_name%>.\r\nParent               : <%$parent%>\r\nCategory Name        : <%$cat_name%>\r\nCategory Description : <%$cat_desc%>\r\nRegards,\r\n<%$site_name%> Team\r\n'),(31,'tell_friend_favorite','Your friend has shared his/her favorite listing','<div style=\"font-family:arial;font-size:12px;\">\r\nHi <%$friend_name%>,\r\n<p>\r\nI\'d like to share my favorite listing at <b><%$site_name%></b> (<a href=\"<%$site_url%>\"><%$site_url%></a>).<br>\r\nI hope you like them and find them useful.\r\n<p>\r\n<p>\r\n<%$fav_item%>\r\n<p>\r\n<p>\r\nSincerely,\r\n<p>\r\n<p>\r\n<%$my_name%> <<%$my_email%>>\r\n</div>','Hi <%$friend_name%>,\r\nI\'d like to share my favorite listings at <%$site_name%> (<%$site_url%>).\r\nI hope you like them and find them useful.\r\n<%$fav_item%>\r\nSincerely,\r\n<%$my_name%> <<%$my_email%>>\r\n'),(32,'tell_friend_favorite_rows',NULL,'<div style=\"font-family:arial;font-size:12px;\">\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style=\"width:100px;\">Title</td><td style=\"width:10px;\">:</td><td ><%$title%></td></tr>\r\n<tr><td style=\"width:100px;\">Url</td><td style=\"width:10px;\">:</td><td ><%$url%></td></tr>\r\n<tr><td style=\"width:100px;\">Description</td><td style=\"width:10px;\">:</td><td ><%$description%></td></tr>\r\n</table>\r\n</div>\r\n','Title       : <%$title%>\r\nUrl         : <%$url%>\r\nDescription : <%$description%>\r\n'),(33,'tell_friend_link','Your friend recommended a link','<div style=\"font-family:arial;font-size:12px;\">\r\nHi <b><%$friend_name%></b>,\r\n<p>\r\nI found a good website that you may find interesting.\r\n<p>\r\n<div>\r\n<label style=\"float:left;width:100px;\">Website</label><label style=\"float:left;\"> : <b><%$title%></b></label>\r\n</div>\r\n<div style=\"clear:both;\">\r\n<label style=\"clear:both;float:left;width:100px;\">Url </label><label style=\"float:left;\"> : <a href=\"<%$url%>\"><%$url%></a></label>\r\n</div>\r\n<p style=\"clear:both;\">\r\nI found this website from <%$site_name%> (<a href=\"<%$site_url%>\"><%$site_url%></a>).\r\n<p>\r\n<p>\r\nSincerely,\r\n<p>\r\n<%$my_name%> <<%$my_email%>>\r\n</div>\r\n','Hi <%$friend_name%>,\r\nI found a good website that you may find interesting.\r\nWebsite : <%$title%>\r\nUrl     : <%$url%>\r\nI found this website from <%$site_name%> (<%$site_url%>).\r\nSincerely,\r\n<%$my_name%> <<%$my_email%>>\r\n'),(34,'tell_friend_website','hi <%$friend_name%>, I found a good website that you may find interesting','<div style=\"font-family:arial;font-size:12px;\">\r\nHi <b><%$friend_name%></b>,\r\n<p>\r\nI found good website that you may find interesting. The website is <b><%$site_name%></b> (<a href=\"<%$site_url%>\"><%$site_url%></a>).\r\n<p>\r\n<p>\r\nSincerely,\r\n<p>\r\n<%$my_name%> <<%$my_email%>>\r\n</div>','Hi <%$friend_name%>,\r\nI found a good website that you may find interesting. The website is <%$site_name%> (<%$site_url%>).\r\nSincerely,\r\n<%$my_name%> <<%$my_email%>>\r\n');

alter table `idx_payment_history` change `username` `contact_name` varchar(255) default NULL;  
alter table `idx_payment_history` add `email` varchar(255) default NULL after `contact_name`;  
alter table `idx_payment_history` add `invoice_id` varchar(10) default NULL after `time`;  

#  
# Table structure for table 'idx_discount_coupon' 
#  

DROP TABLE IF EXISTS idx_discount_coupon;
CREATE TABLE `idx_discount_coupon` (                                               
   `coupon_id` int(11) NOT NULL auto_increment,                                     
   `coupon_code` varchar(255) default NULL,               
   `coupon_value` varchar(50) default NULL,               
   `link_type` varchar(255) default NULL,                 
   `start_date` date default NULL,                                                  
   `expired_date` date default NULL,                                                
   `expired_usage` int(11) default NULL,                                            
   `usage_count` int(11) default NULL,                                              
   PRIMARY KEY  (`coupon_id`)                                                       
 );


DROP TABLE IF EXISTS idx_category_suggession; 
CREATE TABLE `idx_category_suggession` (                                            
   `id_cat_suggession` int(11) NOT NULL auto_increment,                              
   `parent_id` int(11) default NULL,                                                 
   `name` varchar(255) default NULL,                       
   `category_description` text ,                            
   `date` datetime default NULL,                                                     
   PRIMARY KEY  (`id_cat_suggession`)                                                
 );
 
CREATE TABLE `idx_plugin` (                                                        
      `plugin_id` int(11) NOT NULL auto_increment,                                     
      `name` varchar(255) default NULL,                      
      `plugin_file` varchar(255) default NULL,               
      `status` enum('0','1') default NULL,                   
      `option_plugin` text,                   
      PRIMARY KEY  (`plugin_id`)                                                       
); 

alter table `idx_link` change `hits` `hits` mediumint(9) NOT NULL default '0';  


#################
#      1.0
#################


DROP TABLE IF EXISTS `idx_default_field`;
CREATE TABLE IF NOT EXISTS `idx_default_field` (
  `field_name` varchar(64) NOT NULL,
  `required` char(1) NOT NULL,
  `visible` char(1) NOT NULL default '1',
  `searchable` char(1) NOT NULL default '1'
);

INSERT INTO `idx_default_field` (`field_name`, `required`, `visible`, `searchable`) VALUES
('title', '1', '1', '1'),
('url', '1', '1', '1'),
('description', '1', '1', '1'),
('keywords', '1', '1', '0'),
('contact_name', '1', '1', '1'),
('email', '1', '1', '1'),
('reciprocal_url', '0', '1', '1');

DROP TABLE IF EXISTS `idx_cronjobs`;
CREATE TABLE IF NOT EXISTS `idx_cronjobs` (
  `cronjobs_id` int(11) NOT NULL auto_increment,
  `cronjobs_name` varchar(255) default NULL,
  `filename` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `execution` varchar(1) NOT NULL,
  PRIMARY KEY  (`cronjobs_id`)
);


#################
#      1.1
#################


INSERT INTO `idx_cronjobs` (`cronjobs_id`, `cronjobs_name`, `filename`, `schedule`, `time`, `execution`) VALUES
(1, NULL, 'clear_templates_c.php', '1,*,*,*,*', '0000-00-00 00:00:00', ''),
(2, NULL, 'update_tag_cloud.php', '*,24,*,*,*', '0000-00-00 00:00:00', ''),
(3, NULL, 'clear_rss_cache.php', '*,24,*,*,*', '0000-00-00 00:00:00', '');


#################
#      1.22
#################


ALTER TABLE `idx_custom_field` CHANGE `field_type` `field_type` ENUM( 'TEXT', 'TEXTAREA', 'SELECT', 'MULTISELECT', 'CHECKBOX', 'RADIO', 'FILE', 'IMAGE', 'DATE', 'DATETIME', 'RICHEDITOR' ) NOT NULL DEFAULT 'TEXT';
#  
# Version IndexU Deluxe 1.22
#  

CREATE TABLE `idx_blocked_domain` (                                                 
  `blocked_id` int(11) NOT NULL auto_increment,                                     
  `blocked` varchar(255) default NULL,                    
  `type` enum('domain','ip') default NULL,                
  PRIMARY KEY  (`blocked_id`)                                                       
);

INSERT INTO `idx_blocked_domain` (`blocked_id`, `blocked`, `type`) VALUES
(1, 'buydomains.com', 'domain'),
(2, 'this-domain-for-sale.com ', 'domain'),
(3, 'oversee.net', 'domain'),
(4, 'eNom', 'domain'),
(5, 'sedoparking.com', 'domain');

                    
CREATE TABLE `idx_unavailable` (                                                    
 `idx_unavailable` int(11) NOT NULL auto_increment,                                
 `link_id` int(11) default NULL,                                                   
 `url` varchar(255) default NULL,                        
 `who_is` varchar(255) default NULL,                     
 `note` text ,                                            
 `date` datetime default NULL,                                                     
 PRIMARY KEY  (`idx_unavailable`)                                                  
);

CREATE TABLE `idx_unavailable_latest` (                           
  `idx_link` int(11) default NULL,                                
  `record_execution` int(11) default NULL                         
);


CREATE TABLE `idx_hook_place` (                                                      
  `hook_place_id` int(11) NOT NULL auto_increment,                                   
  `filename` varchar(255) default NULL,                    
  `hookname` varchar(255) default NULL,                    
  PRIMARY KEY  (`hook_place_id`)                                                     
);

CREATE TABLE `idx_set_hook_place` (                                                
  `set_hook_place_id` int(11) NOT NULL auto_increment,                             
  `plugin` varchar(255) default NULL,                    
  `set_hook_place` text,                                 
  PRIMARY KEY  (`set_hook_place_id`)                                               
);               

DROP TABLE IF EXISTS `idx_admin_menu`;

CREATE TABLE `idx_admin_menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) default NULL,
  `menu_title` varchar(255) default NULL,
  `menu_url` varchar(255) default NULL,
  `order_number` int(11) default NULL,
  PRIMARY KEY  (`menu_id`)
);

insert  into `idx_admin_menu`(`menu_id`,`parent_id`,`menu_title`,`menu_url`,`order_number`) values (1,0,'Dashboard','summary.php',0),(3,0,'Categories','cat_view.php',0),(4,3,'View/ Edit/ Delete','cat_view.php',1),(5,3,'Add New Category','cat_add.php',2),(2,1,'Summary','summary.php',1),(7,3,'Check Category Structure','cat_struc.php',4),(8,3,'Update Category Path','cat_path_update.php',5),(6,3,'Pending Category','cat_pending_suggestion.php',3),(9,3,'Set Default Price','cat_set_default_price.php',6),(10,3,'Hidden Category','cat_view_hidden.php',7),(11,3,'Registered Users Only','cat_view_registered_only.php',8),(12,3,'Search Category','cat_search.php',9),(13,0,'Links','link_search.php',0),(14,13,'Search/ Edit/ Delete','link_search.php',1),(15,13,'Add New Link','link_add.php',2),(16,13,'Validate Link','link_validate.php',3),(17,13,'Premium Listing','link_premium_listing.php',4),(18,13,'Sponsored Listing','link_sponsored_listing.php',5),(19,13,'Suspended Listing','link_suspended_listing.php',6),(20,13,'Spam Links','link_validate.php?spam=1',7),(22,13,'Update Number of Links','app_update_nol.php',9),(23,13,'Update Tag Clouds','tag_cloud_update.php',10),(21,13,'Editor Pick Links','link_editor_pick.php',8),(25,13,'Validate Reviews','review_validate.php',11),(26,13,'Discount Coupon','coupon.php',12),(27,13,'Default Field','link_default_field.php',13),(28,13,'Custom Field','link_custom_field.php',14),(29,0,'Users','user_active.php',0),(30,29,'View All','user_active.php',1),(31,29,'Add New User','user_add.php',2),(32,29,'View Suspend','user_suspend.php',3),(33,29,'View Unactive','user_active.php?pflag=Unactive',4),(34,29,'Search User','user_search.php',5),(35,0,'Editors','editor_add.php',0),(36,35,'Add New Editor','editor_add.php',1),(37,35,'Validate Editors','editor_validate.php',2),(38,0,'Invoices','inv_config.php',0),(39,38,'Configure','inv_config.php',1),(40,38,'Create An Invoice','inv_create.php',2),(41,38,'Paid Invoice','inv_paid.php',3),(42,38,'Unpaid Invoice','inv_unpaid.php',4),(43,38,'Overdue Invoice','inv_overdue.php',5),(44,38,'Payment History','pay_history.php',6),(45,0,'Mailling Systems','message_view.php',0),(46,45,'Send/ Edit/ Delete','message_view.php',1),(47,45,'Create Template','message_create.php',2),(48,45,'Mailing List Subscribers','message_subscriber.php',3),(49,0,'Templates','template_manager.php',0),(50,49,'Site Templates Manager','template_manager.php',1),(51,49,'Import Site Template','template_import.php',2),(52,49,'Export Site Template','template_export.php',3),(53,49,'Email Templates','email_template.php',4),(54,49,'Export Email Template','email_template_export.php',5),(55,49,'Import Email Template','email_template_import.php',6),(56,0,'Tools','link_duplicate.php',0),(57,56,'Find Duplicate Link','link_duplicate.php',1),(58,56,'Broken Link Report','link_bad.php',2),(59,56,'Spider Link CheckUrl','checkurl_web.php',3),(60,56,'Block Name server Domain','blocked_domain_list.php',4),(61,56,'Add Block Name server Domain','add_blocked_domain.php',5),(62,56,'Unavailable domain listing','unavailable_link_list.php',6),(63,56,'Clear Template Cache','clear_templates_c.php',7),(64,56,'PHP Configuration','phpinfo.php',8),(65,56,'Sitemap Generator','sitemap.php',9),(66,56,'Cronjobs','cronjobs.php',10),(67,56,'Fetch Meta','fetch_meta.php',11),(68,56,'Hook Place','hook_place.php',12),(69,56,'CheckUrl Result','link_checkurl.php',13),(70,56,'View Search Log','log_search.php',14),(71,56,'Bad Words Filter','badword_filter.php',15),(72,0,'Options','app_setup.php',0),(73,72,'Setup','app_setup.php',1),(74,72,'Page Caching','app_page_caching.php',2),(75,72,'Mod-rewrite','app_mod_rewrite.php',3),(76,72,'Change Password','app_change_pwd.php',4),(77,0,'Database','db_import.php',0),(78,77,'Import','db_import.php',1),(79,77,'Export','db_export.php',2),(80,77,'Backup','db_backup.php',3),(81,77,'Query','db_query.php',4),(82,77,'Find Replace','db_find_replace.php',5),(83,0,'Plugins','plugin_listing.php',0),(84,83,'View All','plugin_listing.php',1);



#################
#      1.31
#################


ALTER TABLE `idx_tags` ADD `tag_path` varchar(64) NOT NULL after `total`;


#################
#      1.32
#################


ALTER TABLE `idx_users` CHANGE `password` `password` varchar(50) NOT NULL;


#################
#      1.41
#################


CREATE TABLE `idx_payment_gateway` (
  `payment_gateway_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `enable` char(1) default NULL,
  `setting` text ,
  `invoice_html` text,
  PRIMARY KEY  (`payment_gateway_id`)
);

INSERT INTO `idx_payment_gateway` (`payment_gateway_id`, `name`, `enable`, `setting`, `invoice_html`) VALUES
(1, 'paypal', '1', 'a:2:{s:13:"payment_email";s:0:"";s:21:"enable_paypal_sandbox";s:1:"0";}', '<p> \r\n	<a href=''paynow.php?id={$invoice_id}&m=paypal''><img src=''http://www.paypal.com/images/x-click-but02.gif'' border=''0'' alt=''Make payments with PayPal - it is fast, free and secure!'' /></a> \r\n</p>\r\n'),
(2, '2co', '1', 'a:6:{s:6:"co_sid";s:5:"84932";s:9:"co_secret";s:5:"tango";s:12:"co_recurring";s:1:"0";s:9:"co_prod_1";s:6:"100.00";s:9:"co_prod_2";s:6:"250.00";s:9:"co_prod_3";s:6:"400.00";}', '<p>\r\n<a href=''paynow.php?id={$invoice_id}&m=2co''><img src=''http://www.2checkout.com/images/overview/btns/25.jpg'' alt=''Pay Now with 2checkout...'' border=''0'' /></a> \r\n</p>'),
(3, 'authorizenet', '0', 'a:2:{s:21:"authorizenet_login_id";s:0:"";s:21:"authorizenet_tran_key";s:0:"";}', '<p> \r\n<a href=''paynow.php?id={$invoice_id}&m=authorizenet''><img src=''http://www.authorize.net/upload/images/Images/Header/authorizenet_logo.gif'' alt=''Pay Now with Authorize.Net...'' width=''99'' height=''39'' style=''{border : 1px solid #c0c0c0;}'' /></a>\r\n</p>'),
(4, 'egold', '1', 'a:2:{s:19:"egold_payee_account";s:0:"";s:16:"egold_payee_name";s:0:"";}', '<p> \r\n<a href=''paynow.php?id={$invoice_id}&m=egold''>\r\n<img src=''http://www.e-gold.com/gif/paywith.gif'' border=''0'' alt=''Pay Now with e-gold...'' />\r\n</a>\r\n</p>'),
(5, 'moneybookers', '1', 'a:1:{s:18:"moneybookers_email";s:0:"";}', '<p> \r\n<a href=''paynow.php?id={$invoice_id}&m=paypal''><img src=''http://www.moneybookers.com/images/banners/88_en_mb.gif'' border=''0'' alt=''Make payments with Moneybookers - it is fast, free and secure!'' /></a> \r\n</p>'),
(6, 'paypal-subscriptions', '1', 'a:2:{s:13:"payment_email";s:0:"";s:21:"enable_paypal_sandbox";s:1:"0";}', '<p> \r\n<a href=''paynow.php?id={$invoice_id}&m=paypal''><img src=''https://www.paypal.com/en_US/i/btn/x-click-but20.gif'' border=''0'' alt=''Make payments with PayPal - it is fast, free and secure!'' /></a> \r\n</p>'),
(7, 'alertpay', '1', 'a:2:{s:14:"alertpay_email";s:0:"";s:23:"enable_alertpay_sandbox";s:1:"0";}', '<p> \r\n<a href=''paynow.php?id={$invoice_id}&m=alertpay''>\r\n<img src=''https://www.alertpay.com/Images/BuyNow/pay_now_3.gif'' border=''0'' alt=''Make payments with PayPal - it is fast, free and secure!'' /></a> \r\n</p>'),
(8, 'alertpay-subcriptions', '1', 'a:2:{s:14:"alertpay_email";s:0:"";s:23:"enable_alertpay_sandbox";s:1:"0";}', '<p>\r\n<a href=''paynow.php?id={$invoice_id}&m=alertpay-subcriptions''>\r\n<img src=''https://www.alertpay.com/Images/BuyNow/subscribe_now_15.gif'' border=''0'' alt=''Make payments with Alert Pay - it is fast, free and secure!'' /></a> \r\n</p>');

UPDATE `idx_email_template` SET `body` = '<div style="font-family:arial;font-size:12px;">\r\nThere''s a new submission to <b><%$site_name%></b>.\r\n<p>\r\n<table cellspacing=0 cellpadding=0>\r\n<tr><td style="width:100px;">Title</td><td style="width:10px;">:</td><td ><%$title%></td></tr>\r\n<tr><td style="width:100px;">Url</td><td style="width:10px;">:</td><td ><%$url%></td></tr>\r\n<tr><td style="width:100px;">Description</td><td style="width:10px;">:</td><td ><%$description%></td></tr>\r\n<tr><td style="width:100px;">Category</td><td style="width:10px;">:</td><td ><%$category%></td></tr>\r\n<tr><td style="width:100px;">Contact name</td><td style="width:10px;">:</td><td ><%$contact_name%></td></tr>\r\n<tr><td style="width:100px;">Email</td><td style="width:10px;">:</td><td ><%$email%></td></tr>\r\n</table>\r\n<p>\r\n<p>\r\nYou need to review this link here:<br>\r\n<label style="margin-left:10px;"><a href="<%$site_url%>/cp/editor_link_validate.php"><%$site_url%>/cp/editor_link_validate.php</a></label><br>\r\nYou can approve this submission by clicking here:<br>\r\n<label style="margin-left:10px;"><a href="<%$approve_notice%>"><%$approve_notice%></a></label><br>\r\nYou can reject this submission by clicking here:<br>\r\n<label style="margin-left:10px;"><a href="<%$reject_notice%>"><%$reject_notice%></a></label><br>\r\nSilent reject here:<br>\r\n<label style="margin-left:10px;"><a href="<%$reject_silent%>"><%$reject_silent%></a></label><br>\r\n\r\n<p>\r\n<p>\r\nRegards,\r\n<p>\r\n<b><%$site_name%></b> Team\r\n</div>\r\n', `altbody` = 'There''s a new submission to <%$site_name%>.\r\nTitle        : <%$title%>\r\nUrl          : <%$url%>\r\nDescription  : <%$description%>\r\nCategory     : <%$category%>\r\nContact name : <%$contact_name%>\r\nEmail        : <%$email%>\r\nYou need to review this link here:\r\n<%$site_url%>/cp/editor_link_validate.php\r\nYou can approve this submission by clicking here:\r\n<%$approve_notice%>\r\nYou can reject this submission by clicking here:\r\n<%$reject_notice%>\r\nSilent reject here:\r\n<%$reject_silent%>\r\n\r\nRegards,\r\n<%$site_name%> Team\r\n' where `name` = 'add_pending_editor';


#################
#      1.42
#################


DROP TABLE IF EXISTS `idx_admin_menu`;

CREATE TABLE `idx_admin_menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) default NULL,
  `menu_title` varchar(255) default NULL,
  `menu_url` varchar(255) default NULL,
  `order_number` int(11) default NULL,
  PRIMARY KEY  (`menu_id`)
);

insert  into `idx_admin_menu`(`menu_id`,`parent_id`,`menu_title`,`menu_url`,`order_number`) values (1,0,'Dashboard','summary.php',0),(3,0,'Categories','cat_view.php',0),(4,3,'View/ Edit/ Delete','cat_view.php',1),(5,3,'Add New Category','cat_add.php',2),(2,1,'Summary','summary.php',1),(7,3,'Check Category Structure','cat_struc.php',4),(8,3,'Update Category Path','cat_path_update.php',5),(6,3,'Pending Category','cat_pending_suggestion.php',3),(9,3,'Set Default Price','cat_set_default_price.php',6),(10,3,'Hidden Category','cat_view_hidden.php',7),(11,3,'Registered Users Only','cat_view_registered_only.php',8),(12,3,'Search Category','cat_search.php',9),(13,0,'Links','link_search.php',0),(14,13,'Search/ Edit/ Delete','link_search.php',1),(15,13,'Add New Link','link_add.php',2),(16,13,'Validate Link','link_validate.php',3),(17,13,'Premium Listing','link_premium_listing.php',4),(18,13,'Sponsored Listing','link_sponsored_listing.php',5),(19,13,'Suspended Listing','link_suspended_listing.php',6),(20,13,'Spam Links','link_validate.php?spam=1',7),(22,13,'Update Number of Links','app_update_nol.php',9),(23,13,'Update Tag Clouds','tag_cloud_update.php',10),(21,13,'Editor Pick Links','link_editor_pick.php',8),(25,13,'Validate Reviews','review_validate.php',11),(26,13,'Discount Coupon','coupon.php',12),(27,13,'Default Field','link_default_field.php',13),(28,13,'Custom Field','link_custom_field.php',14),(29,0,'Users','user_active.php',0),(30,29,'View All','user_active.php',1),(31,29,'Add New User','user_add.php',2),(32,29,'View Suspend','user_suspend.php',3),(33,29,'View Unactive','user_active.php?pflag=Unactive',4),(34,29,'Search User','user_search.php',5),(35,0,'Editors','editor_add.php',0),(36,35,'Add New Editor','editor_add.php',1),(37,35,'Validate Editors','editor_validate.php',2),(38,0,'Invoices','inv_config.php',0),(39,38,'Configure','inv_config.php',1),(40,38,'Create An Invoice','inv_create.php',2),(41,38,'Paid Invoice','inv_paid.php',3),(42,38,'Unpaid Invoice','inv_unpaid.php',4),(43,38,'Overdue Invoice','inv_overdue.php',5),(44,38,'Payment History','pay_history.php',6),(45,0,'Mailling Systems','message_view.php',0),(46,45,'Send/ Edit/ Delete','message_view.php',1),(47,45,'Create Template','message_create.php',2),(48,45,'Mailing List Subscribers','message_subscriber.php',3),(49,0,'Templates','template_manager.php',0),(50,49,'Site Templates Manager','template_manager.php',1),(51,49,'Import Site Template','template_import.php',2),(52,49,'Export Site Template','template_export.php',3),(53,49,'Email Templates','email_template.php',4),(54,49,'Export Email Template','email_template_export.php',5),(55,49,'Import Email Template','email_template_import.php',6),(56,0,'Tools','link_duplicate.php',0),(57,56,'Find Duplicate Link','link_duplicate.php',1),(58,56,'Broken Link Report','link_bad.php',2),(59,56,'Spider Link CheckUrl','checkurl_web.php',3),(60,56,'Block Name server Domain','blocked_domain_list.php',4),(61,56,'Add Block Name server Domain','add_blocked_domain.php',5),(62,56,'Unavailable domain listing','unavailable_link_list.php',6),(63,56,'Clear Template Cache','clear_templates_c.php',7),(64,56,'PHP Configuration','phpinfo.php',8),(65,56,'Sitemap Generator','sitemap.php',9),(66,56,'Cronjobs','cronjobs.php',10),(67,56,'Fetch Meta','fetch_meta.php',11),(68,56,'Hook Place','hook_place.php',12),(69,56,'CheckUrl Result','link_checkurl.php',13),(70,56,'View Search Log','log_search.php',14),(71,56,'Bad Words Filter','badword_filter.php',15),(72,0,'Options','app_setup.php',0),(73,72,'Setup','app_setup.php',1),(74,72,'Page Caching','app_page_caching.php',2),(75,72,'Mod-rewrite','app_mod_rewrite.php',3),(76,72,'Change Password','app_change_pwd.php',4),(77,0,'Database','db_import.php',0),(78,77,'Import','db_import.php',1),(79,77,'Export','db_export.php',2),(80,77,'Backup','db_backup.php',3),(81,77,'Query','db_query.php',4),(82,77,'Find Replace','db_find_replace.php',5),(83,0,'Plugins','plugin_listing.php',0),(84,83,'View All','plugin_listing.php',1);


#################
#      2.2
#################


ALTER TABLE `idx_link` ADD `address` VARCHAR(255) NULL,
  ADD `city` VARCHAR(255) NULL,
  ADD `state` VARCHAR(255) NULL,
  ADD `country` VARCHAR(255) NULL,
  ADD `zip` VARCHAR(255) NULL,
  ADD `image` VARCHAR(255) NULL;

ALTER TABLE `idx_link_temp` ADD `address` VARCHAR(255) NULL,
  ADD `city` VARCHAR(255) NULL,
  ADD `state` VARCHAR(255) NULL,
  ADD `country` VARCHAR(255) NULL,
  ADD `zip` VARCHAR(255) NULL,
  ADD `image` VARCHAR(255) NULL;

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`) values ('image','Image','IMAGE','',0,0,0,'','0','0','2');


#################
#      2.3
#################


ALTER TABLE `idx_link` ADD `phone` VARCHAR(255) NULL,
  ADD `fax` VARCHAR(255) NULL;

ALTER TABLE `idx_link_temp` ADD `phone` VARCHAR(255) NULL,
  ADD `fax` VARCHAR(255) NULL;

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('address','Address','TEXT','',0,0,0,'','0','0','0');

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('city','City','TEXT','',0,0,0,'','0','0','0');

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('state','State','TEXT','',0,0,0,'','0','0','0');

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('country','Country','TEXT','',0,0,0,'','0','0','0');

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('zip','Zip','TEXT','',0,0,0,'','0','0','0');

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('phone','Phone','TEXT','',0,0,0,'','0','0','0');

insert  into `idx_custom_field`(`field_name`,`field_text`,`field_type`,`field_option`,`field_img_width`,`field_img_height`,`field_file_size`,`field_file_extension`,`required`,`searchable`,`permission`)
  values ('fax','Fax','TEXT','',0,0,0,'','0','0','0');


UPDATE idx_payment_gateway SET ENABLE = 0 WHERE NAME <> "paypal";

UPDATE `idx_default_field` SET `visible`='0' WHERE `field_name`='reciprocal_url';



CREATE TABLE `idx_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` text,
  PRIMARY KEY (`setting_id`)
);

INSERT INTO `idx_setting` VALUES(4, 'site_name', 'IDD 2.4');
INSERT INTO `idx_setting` VALUES(5, 'site_url', '');
INSERT INTO `idx_setting` VALUES(6, 'email_address', '');
INSERT INTO `idx_setting` VALUES(7, 'language_code', 'en_US');
INSERT INTO `idx_setting` VALUES(8, 'theme_path', '');
INSERT INTO `idx_setting` VALUES(9, 'admin_template_path', '');
INSERT INTO `idx_setting` VALUES(10, 'plugin_path', '');
INSERT INTO `idx_setting` VALUES(12, 'active_theme', 'komet');
INSERT INTO `idx_setting` VALUES(14, 'spam_proof', '1');
INSERT INTO `idx_setting` VALUES(15, 'enable_user_validation', '1');
INSERT INTO `idx_setting` VALUES(16, 'allowed_file_extension', 'gif,jpg,png,pdf,zip,doc');
INSERT INTO `idx_setting` VALUES(17, 'yahoo_appid', '');
INSERT INTO `idx_setting` VALUES(18, 'whosonline', '600');
INSERT INTO `idx_setting` VALUES(19, 'reciprocal_check', '0');
INSERT INTO `idx_setting` VALUES(20, 'urlcheck_limit', '1');
INSERT INTO `idx_setting` VALUES(21, 'pagerank_cache', '30');
INSERT INTO `idx_setting` VALUES(22, 'max_image_width', '1024');
INSERT INTO `idx_setting` VALUES(23, 'max_image_height', '756');
INSERT INTO `idx_setting` VALUES(24, 'max_file_size', '500');
INSERT INTO `idx_setting` VALUES(25, 'only_registered_can_add_link', '0');
INSERT INTO `idx_setting` VALUES(26, 'only_registered_can_add_review', '0');
INSERT INTO `idx_setting` VALUES(27, 'db_use_persistent', '0');
INSERT INTO `idx_setting` VALUES(28, 'paid_link_day_period', '30,60,90,180');
INSERT INTO `idx_setting` VALUES(29, 'paid_link_price_factor', '1,1.5,2,3');
INSERT INTO `idx_setting` VALUES(30, 'enable_html_tag', '1');
INSERT INTO `idx_setting` VALUES(31, 'allowed_html_tag', '<b>,<strong>,<i>,<em>,<u>,<pre>,<blockquote>,<ol>,<ul>,<li>,<p>,<span>,<div>,<table>,<tr>,<td>');
INSERT INTO `idx_setting` VALUES(32, 'enable_page_compression', '0');
INSERT INTO `idx_setting` VALUES(33, 'enable_category_ajax', '1');
INSERT INTO `idx_setting` VALUES(34, 'require_visit_category', '0');
INSERT INTO `idx_setting` VALUES(35, 'additional_category_price', '0.5');
INSERT INTO `idx_setting` VALUES(36, 'enable_rating_ajax', '1');
INSERT INTO `idx_setting` VALUES(37, 'service_nicecoder_avail', '1');
INSERT INTO `idx_setting` VALUES(38, 'enable_recaptcha', '0');
INSERT INTO `idx_setting` VALUES(39, 'recaptcha_publickey', '');
INSERT INTO `idx_setting` VALUES(40, 'recaptcha_privatekey', '');
INSERT INTO `idx_setting` VALUES(41, 'enable_bidding', '0');
INSERT INTO `idx_setting` VALUES(42, 'minimum_bid', '5');
INSERT INTO `idx_setting` VALUES(43, 'bid_increament', '1');
INSERT INTO `idx_setting` VALUES(44, 'charset', 'utf-8');
INSERT INTO `idx_setting` VALUES(45, 'mailer', 'mail');
INSERT INTO `idx_setting` VALUES(46, 'smtp_auth', '0');
INSERT INTO `idx_setting` VALUES(47, 'smtp_host', '');
INSERT INTO `idx_setting` VALUES(48, 'smtp_username', '');
INSERT INTO `idx_setting` VALUES(49, 'smtp_password', '');
INSERT INTO `idx_setting` VALUES(50, 'smtp_port', '25');
INSERT INTO `idx_setting` VALUES(51, 'emailbody_as_html', '0');
INSERT INTO `idx_setting` VALUES(52, 'indexu_version', '2.4');
INSERT INTO `idx_setting` VALUES(53, 'tos', '');
INSERT INTO `idx_setting` VALUES(54, 'submission_guidelines', '');