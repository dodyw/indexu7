
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `lep_activity` */

CREATE TABLE `lep_activity` (
  `activity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `created_at` char(10) NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_activity` */

/*Table structure for table `lep_amenu` */

CREATE TABLE `lep_amenu` (
  `amenu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `sp` char(1) NOT NULL,
  PRIMARY KEY (`amenu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

/*Data for the table `lep_amenu` */

insert  into `lep_amenu`(`amenu_id`,`parent_id`,`name`,`title`,`url`,`order_num`,`sp`) values (1,0,'cat','Categories','category.php',10,''),(2,0,'link','Links','link.php',20,''),(3,0,'user','Users','user.php',30,''),(4,1,'cat_add','Add','category.php?act=add',10,'1'),(5,1,'cat_manage','Manage','category.php',20,''),(6,1,'cat_pending','Pending','category.php?act=pending',30,''),(9,2,'link_add','Add','link.php?act=add',10,'1'),(97,2,'link_update_number_of_links','Update Number of Links','link.php?act=update_number_of_links',100,'0'),(10,2,'link_manage','Manage','link.php',20,''),(11,2,'link_pending','Pending','link.php?act=pending',30,''),(14,3,'user_add','Add','user.php?act=add',10,'1'),(15,3,'user_manage','Manage','user.php',20,''),(102,98,'cf_link','Manage Link Fields','link_cf.php',40,''),(103,98,'cf_user_add','Add User Field','user_cf.php?act=add',50,''),(101,98,'cf_link_add','Add Link Field','link_cf.php?act=add',30,''),(18,0,'page','Pages','page.php',50,''),(21,0,'widget','Witgets','widget_placement.php',60,''),(24,21,'widget_pl_add','Add','widget_placement.php?act=add',10,'1'),(25,21,'widget_pl_manage','Manage','widget_placement.php',20,''),(26,0,'content','Static Pages','content.php',70,''),(27,26,'content_add','Add','content.php?act=add',10,'1'),(28,26,'content_manage','Manage','content.php',20,''),(29,0,'setting','Setting','setting.php',200,'1'),(30,0,'comment','Comments','comment.php',40,''),(31,30,'comment_manage','Manage','comment.php',10,''),(99,98,'cf_category_add','Add Category Field','category_cf.php?act=add',10,''),(100,98,'cf_category','Manage Category Fields','category_cf.php',20,''),(98,0,'cf','Custom Fields','res_cf.php',50,''),(34,30,'comment_pending','Pending','comment.php?act=pending',20,''),(35,1,'cat_update_category_path','Update Category Path','category.php?act=update_category_path',60,''),(38,2,'res_update_tag_cloud','Update Tag Cloud','link.php?act=update_tag_cloud',110,''),(39,0,'main','Dashboard','index.php',5,''),(40,26,'content_group_add','Add Group','content_group.php?act=add',30,'1'),(41,26,'content_group','Manage Groups','content_group.php',40,''),(43,49,'template_manage','Manage','template.php',10,''),(48,49,'email_template_manage','Manage Email Templates','email_template.php',30,''),(45,0,'database','Database','db.php',100,''),(46,0,'sitemap','Sitemap','sitemap.php',90,''),(47,29,'email_notification','Email Notification','email_notification.php',30,''),(49,0,'template','Templates','template.php',85,''),(50,49,'email_template_add','Add Email Template','email_template.php?act=add',20,''),(53,2,'link_pending_mod','Pending Modification','link.php?act=pending_mod',35,''),(55,29,'setting','General Setting','setting.php',0,''),(56,29,'page_caching','Page Caching','page_caching.php',30,''),(57,29,'socialsite','Social Bookmarking','socialsite.php',40,''),(58,107,'paypal','Paypal','paypal.php',1000,'0'),(59,107,'recaptcha','Recaptcha','recaptcha.php',100,'0'),(60,107,'twitter','Twitter','twitter.php',110,'0'),(62,107,'google_api','Google','google.php',120,'0'),(63,107,'thumbshot','Thumbshot','thumbshot.php',130,'0'),(64,29,'manual_payment','Manual Payment','manual_transfer.php',1010,'0'),(65,0,'menu','Menu','menu.php',75,'0'),(66,65,'menu_add','Add','menu.php?act=add',0,'1'),(67,65,'menu_manage','Manage','menu.php',10,'0'),(68,65,'menu_group_add','Add Group','menu_group.php?act=add',30,'1'),(108,107,'facebook','Facebook','facebook.php',70,''),(69,65,'menu_group_manage','Manage Groups','menu_group.php',40,'0'),(71,0,'banner','Banner','banner.php',75,'0'),(72,71,'banner_add','Add','banner.php?act=add',10,'1'),(107,0,'3rd_party','3rd Party','extra.php',9000,''),(73,71,'banner_manage','Manage','banner.php',20,'0'),(74,107,'alertpay','AlertPay','alertpay.php',1005,'0'),(75,107,'mailchimp','MailChimp','mailchimp.php',900,'0'),(104,98,'cf_user','Manage User Fields','user_cf.php',60,''),(105,98,'cf_comment_add','Add Comment Field','comment_cf.php?act=add',70,''),(106,98,'cf_comment','Manage Comment Fields','comment_cf.php',80,''),(111,2,'image_pending','Pending Images','image.php?act=pending',1510,'0'),(112,2,'product_pending','Pending Products','product.php?act=pending',1520,'0'),(113,2,'event_pending','Pending Events','event.php?act=pending',1530,'0'),(114,2,'document_pending','Pending Documents','document.php?act=pending',1540,'0'),(115,2,'promo_pending','Pending Promo','promo.php?act=pending',1550,'0'),(116,2,'news_pending','Pending News','news.php?act=pending',1560,'0'),(117,2,'article_pending','Pending Articles','article.php?act=pending',1570,'0'),(118,2,'video_pending','Pending Videos','video.php?act=pending',1580,'0'),(119,29,'terms_and_conditions','Terms and Conditions','toc.php',2010,''),(120,29,'submission_guidelines','Submission Guidelines','sg.php',2020,''),(121,29,'privacy','Privacy Policy','privacy.php',2030,''),(122,2,'coupon_add','Add Coupon','coupon.php?act=add',200,''),(123,2,'coupon_manage','Manage Coupon','coupon.php',201,''),(124,2,'suspended','Suspended','link.php?act=suspended',38,'');

/*Table structure for table `lep_article` */

CREATE TABLE `lep_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_article` */

/*Table structure for table `lep_banner` */

CREATE TABLE `lep_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `expire` varchar(255) DEFAULT NULL,
  `code` text,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `new_window` char(1) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `reminder1` char(1) DEFAULT '0',
  `reminder2` char(1) DEFAULT '0',
  `reminder3` char(1) DEFAULT '0',
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `lep_banner` */

insert  into `lep_banner`(`banner_id`,`expire`,`code`,`image`,`url`,`new_window`,`position`,`order_num`,`reminder1`,`reminder2`,`reminder3`) values (1,'','','','','1','bottom1',0,'0','0','0');

/*Table structure for table `lep_category` */

CREATE TABLE `lep_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_num` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `path` varchar(255) DEFAULT NULL,
  `path_url` varchar(255) DEFAULT NULL,
  `parents` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `has_child` char(1) NOT NULL DEFAULT '0',
  `num_res` int(11) NOT NULL DEFAULT '0',
  `created_at` char(10) NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `status` (`status`),
  KEY `title` (`title`),
  KEY `order_num` (`order_num`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=432 DEFAULT CHARSET=utf8;

/*Data for the table `lep_category` */

insert  into `lep_category`(`category_id`,`parent_id`,`order_num`,`title`,`status`,`path`,`path_url`,`parents`,`description`,`meta_keyword`,`seo_title`,`has_child`,`num_res`,`created_at`) values (1,0,0,'General','1','General','<a href=\"general\">General</a>','|0|','','','general','0',0,'');

/*Table structure for table `lep_category_field` */

CREATE TABLE `lep_category_field` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `v_required` char(1) NOT NULL DEFAULT '0',
  `searchable` char(1) NOT NULL DEFAULT '0',
  `type` enum('inputText','inputPassword','textarea','inputCheckbox','inputRadio','select','selectmulti','inputFile','richtext','date') DEFAULT 'inputText',
  `val` text,
  `default_val` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `admin_only` char(1) DEFAULT '0',
  `custom` char(1) DEFAULT '1',
  `v_required_help` varchar(255) DEFAULT NULL,
  `v_string` char(1) DEFAULT '0',
  `v_string_help` varchar(255) DEFAULT NULL,
  `v_string_min` varchar(255) DEFAULT NULL,
  `v_string_max` varchar(255) DEFAULT NULL,
  `v_string_regexp` varchar(255) DEFAULT NULL,
  `v_string_equals` varchar(255) DEFAULT NULL,
  `v_string_differs` varchar(255) DEFAULT NULL,
  `v_number` char(1) DEFAULT '0',
  `v_number_help` varchar(255) DEFAULT NULL,
  `v_number_min` varchar(255) DEFAULT NULL,
  `v_number_max` varchar(255) DEFAULT NULL,
  `v_number_real` char(1) DEFAULT NULL,
  `v_date` char(1) DEFAULT '0',
  `v_date_help` varchar(255) DEFAULT NULL,
  `v_date_format` varchar(255) DEFAULT NULL,
  `v_file` char(1) DEFAULT '0',
  `v_file_help` varchar(255) DEFAULT NULL,
  `v_file_min` varchar(255) DEFAULT NULL,
  `v_file_max` varchar(255) DEFAULT NULL,
  `v_file_type` varchar(255) DEFAULT NULL,
  `v_custom` char(1) DEFAULT '0',
  `v_custom_help` varchar(255) DEFAULT NULL,
  `v_custom_php` text,
  `v_custom_js` text,
  `v_unique` char(1) DEFAULT NULL,
  `v_unique_help` varchar(255) DEFAULT NULL,
  `v_unique_field` varchar(255) DEFAULT NULL,
  `v_unique_table` varchar(255) DEFAULT NULL,
  `image_resize` char(1) DEFAULT '0',
  `image_resize_width` int(11) DEFAULT NULL,
  `image_resize_height` int(11) DEFAULT NULL,
  `featured_only` char(1) DEFAULT '0',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `lep_category_field` */

insert  into `lep_category_field`(`field_id`,`name`,`text`,`v_required`,`searchable`,`type`,`val`,`default_val`,`order_num`,`admin_only`,`custom`,`v_required_help`,`v_string`,`v_string_help`,`v_string_min`,`v_string_max`,`v_string_regexp`,`v_string_equals`,`v_string_differs`,`v_number`,`v_number_help`,`v_number_min`,`v_number_max`,`v_number_real`,`v_date`,`v_date_help`,`v_date_format`,`v_file`,`v_file_help`,`v_file_min`,`v_file_max`,`v_file_type`,`v_custom`,`v_custom_help`,`v_custom_php`,`v_custom_js`,`v_unique`,`v_unique_help`,`v_unique_field`,`v_unique_table`,`image_resize`,`image_resize_width`,`image_resize_height`,`featured_only`) values (27,'title','Title','1','1','inputText',NULL,NULL,0,'0','0',NULL,'0',NULL,'','',NULL,NULL,NULL,'0',NULL,'','',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(28,'parent_id','Parent category','1','0','select',NULL,NULL,2,'0','0',NULL,'0',NULL,'','',NULL,NULL,NULL,'0',NULL,'','',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(40,'description','Description','0','1','textarea','','',1,'0','1','','0','','','','','','','0','','','','0','0','','','0','','0','0','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(41,'meta_keyword','Meta keyword','0','0','textarea','','',3,'1','1','','0','','','','','','','0','','','','0','0','','','0','','0','0','','0','','','','1','','','','0',0,0,'0');

/*Table structure for table `lep_claim` */

CREATE TABLE `lep_claim` (
  `res_id` mediumint(9) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` char(10) NOT NULL,
  `hash1` varchar(10) NOT NULL,
  `hash2` varchar(10) NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `lep_claim` */

/*Table structure for table `lep_comment` */

CREATE TABLE `lep_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `comment` text NOT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `lep_comment` */

/*Table structure for table `lep_comment_field` */

CREATE TABLE `lep_comment_field` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `v_required` char(1) DEFAULT NULL,
  `searchable` char(1) DEFAULT NULL,
  `type` enum('inputText','inputPassword','textarea','inputCheckbox','inputRadio','select','selectmulti','inputFile','richtext','date') DEFAULT 'inputText',
  `val` text,
  `default_val` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `admin_only` char(1) DEFAULT NULL,
  `custom` char(1) DEFAULT NULL,
  `v_required_help` varchar(255) DEFAULT NULL,
  `v_string` char(1) DEFAULT NULL,
  `v_string_help` varchar(255) DEFAULT NULL,
  `v_string_min` varchar(255) DEFAULT NULL,
  `v_string_max` varchar(255) DEFAULT NULL,
  `v_string_regexp` varchar(255) DEFAULT NULL,
  `v_string_equals` varchar(255) DEFAULT NULL,
  `v_string_differs` varchar(255) DEFAULT NULL,
  `v_number` char(1) DEFAULT NULL,
  `v_number_help` varchar(255) DEFAULT NULL,
  `v_number_min` varchar(255) DEFAULT NULL,
  `v_number_max` varchar(255) DEFAULT NULL,
  `v_number_real` char(1) DEFAULT NULL,
  `v_date` char(1) DEFAULT NULL,
  `v_date_help` varchar(255) DEFAULT NULL,
  `v_date_format` varchar(255) DEFAULT NULL,
  `v_file` char(1) DEFAULT NULL,
  `v_file_help` varchar(255) DEFAULT NULL,
  `v_file_min` varchar(255) DEFAULT NULL,
  `v_file_max` varchar(255) DEFAULT NULL,
  `v_file_type` varchar(255) DEFAULT NULL,
  `v_custom` char(1) DEFAULT NULL,
  `v_custom_help` varchar(255) DEFAULT NULL,
  `v_custom_php` text,
  `v_custom_js` text,
  `v_unique` char(1) DEFAULT NULL,
  `v_unique_help` varchar(255) DEFAULT NULL,
  `v_unique_field` varchar(255) DEFAULT NULL,
  `v_unique_table` varchar(255) DEFAULT NULL,
  `image_resize` char(1) DEFAULT '0',
  `image_resize_width` int(11) DEFAULT NULL,
  `image_resize_height` int(11) DEFAULT NULL,
  `featured_only` char(1) DEFAULT '0',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `lep_comment_field` */

insert  into `lep_comment_field`(`field_id`,`name`,`text`,`v_required`,`searchable`,`type`,`val`,`default_val`,`order_num`,`admin_only`,`custom`,`v_required_help`,`v_string`,`v_string_help`,`v_string_min`,`v_string_max`,`v_string_regexp`,`v_string_equals`,`v_string_differs`,`v_number`,`v_number_help`,`v_number_min`,`v_number_max`,`v_number_real`,`v_date`,`v_date_help`,`v_date_format`,`v_file`,`v_file_help`,`v_file_min`,`v_file_max`,`v_file_type`,`v_custom`,`v_custom_help`,`v_custom_php`,`v_custom_js`,`v_unique`,`v_unique_help`,`v_unique_field`,`v_unique_table`,`image_resize`,`image_resize_width`,`image_resize_height`,`featured_only`) values (27,'comment','Comment','1','1','textarea','','',2,'0','0','','0','','','','','','','0','','','','1','0','','','0','','','','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(28,'subject','Subject','0','0','inputText','','',1,'0',NULL,'','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(29,'rating','Rating','0','0','select','5|Excellent\r\n4|Very Good\r\n3|Good\r\n2|Not special\r\n1|Poor','5',0,'0',NULL,'','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0');

/*Table structure for table `lep_config` */

CREATE TABLE `lep_config` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

/*Data for the table `lep_config` */

insert  into `lep_config`(`config_id`,`name`,`value`) values (2,'url','http://localhost/repo/indexu/'),(78,'template','komet'),(4,'cat_separator',' / '),(5,'autopending','1'),(6,'nu_new_submission','1'),(7,'nu_resource_approval','1'),(8,'na_new_submission','1'),(9,'na_user_registration','1'),(11,'na_category_request','1'),(12,'require_verify_registration','1'),(20,'dir_name','indexu7'),(14,'upload_folder','upload'),(15,'fee_basic','0'),(16,'fee_featured_1','10'),(17,'enable_payment','1'),(18,'currency','USD'),(19,'na_new_comment','1'),(21,'nu_new_comment','1'),(22,'nu_comment_approval','1'),(23,'license_key','94859434'),(24,'version','7.0'),(26,'fee_featured_2','30'),(27,'fee_featured_3','60'),(28,'duration_featured_1','1'),(29,'duration_featured_3','6'),(30,'duration_featured_2','3'),(31,'duration_base','month'),(32,'enable_recaptcha','0'),(33,'recaptcha_public_key',''),(34,'recaptcha_private_key',''),(35,'lang_code','en_US'),(36,'paypal_email','paypal@domaindomain.com'),(37,'lic_key',''),(38,'ajax_category','1'),(39,'edition',''),(40,'enable_page_caching','0'),(41,'show_runtime','0'),(42,'page_caching_duration_base','day'),(43,'page_caching_index_timeout','1'),(44,'page_caching_category_timeout','1'),(45,'page_caching_detail_timeout','1'),(46,'twitter_username','twuser'),(47,'twitter_password','twpass'),(48,'twitter_autopost_enable','1'),(49,'autopending_paid','0'),(50,'autopending_modification','1'),(51,'language','default'),(52,'enable_google_map','0'),(53,'google_map_api',''),(54,'enable_thumbshot','1'),(55,'twitter_autopost','New listing has been added, title: {title}; url: {detail_url}'),(56,'require_verify_new_submission','0'),(57,'enable_seo_url_tag','0'),(58,'alt_image_pattern','%title %category %filename'),(59,'enable_watermark','1'),(60,'watermark_opacity','40'),(61,'watermark_file','watermark.png'),(62,'enable_mailchimp','0'),(63,'mailchimp_key',''),(64,'mailchimp_list_id',''),(65,'enable_banner_reminder_1','1'),(66,'enable_banner_reminder_2','1'),(67,'enable_banner_reminder_3','1'),(68,'require_reciprocal','1'),(69,'reciprocal_info','Free listing require reciprocal link. Please add the following code to your website before submitting a listing.'),(70,'reciprocal_code','<a href=\"http://www.nicecoder.com\">Directory Software</a>'),(71,'facebook_enable','0'),(72,'facebook_app_id',''),(73,'facebook_secret',''),(74,'twitter_consumer_key',''),(75,'twitter_consumer_secret',''),(76,'twitter_access_token',''),(77,'twitter_token_secret','');

/*Table structure for table `lep_content` */

CREATE TABLE `lep_content` (
  `content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_group_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `page` char(1) DEFAULT '0',
  `position` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

/*Data for the table `lep_content` */

insert  into `lep_content`(`content_id`,`content_group_id`,`title`,`content`,`page`,`position`,`order_num`,`meta_keywords`,`meta_description`) values (100,1,'Privacy Policy','<p>If you require any more information or have any questions about our privacy policy, please feel free to contact us by email at {email}.<br /><br />At {dir_name}, the privacy of our visitors is of extreme importance to us. This privacy policy document outlines the types of personal information is received and collected by {dir_name} and how it is used.<br /><br /></p>\r\n<h2>Log Files</h2>\r\n<p>Like many other Web sites, {dir_name} makes use of log files. The information inside the log files includes internet protocol ( IP ) addresses, type of browser, Internet Service Provider ( ISP ), date/time stamp, referring/exit pages, and number of clicks to analyze trends, administer the site, track user&rsquo;s movement around the site, and gather demographic information. IP addresses, and other such information are not linked to any information that is personally identifiable.<br /><br /></p>\r\n<h2>Cookies and Web Beacons</h2>\r\n<p>{dir_name} does use cookies to store information about visitors preferences, record user-specific information on which pages the user access or visit, customize Web page content based on visitors browser type or other information that the visitor sends via their browser.<br /><br /></p>\r\n<h2>DoubleClick DART Cookie</h2>\r\n<p>Google, as a third party vendor, uses cookies to serve ads on {dir_name}.<br />Google\'s use of the DART cookie enables it to serve ads to users based on their visit to {dir_name} and other sites on the Internet.<br />Users may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy at the following URL - http://www.google.com/privacy_ads.html<br /><br />Some of our advertising partners may use cookies and web beacons on our site. Our advertising partners include .... Google Adsense<br /><br />These third-party ad servers or ad networks use technology to the advertisements and links that appear on {dir_name} send directly to your browsers. They automatically receive your IP address when this occurs. Other technologies ( such as cookies, JavaScript, or Web Beacons ) may also be used by the third-party ad networks to measure the effectiveness of their advertisements and / or to personalize the advertising content that you see.<br /><br />{dir_name} has no access to or control over these cookies that are used by third-party advertisers.<br /><br />You should consult the respective privacy policies of these third-party ad servers for more detailed information on their practices as well as for instructions about how to opt-out of certain practices. {dir_name}\'s privacy policy does not apply to, and we cannot control the activities of, such other advertisers or web sites.<br /><br />If you wish to disable cookies, you may do so through your individual browser options. More detailed information about cookie management with specific web browsers can be found at the browsers\' respective websites.</p>','0','bottom1',0,NULL,NULL);

/*Table structure for table `lep_content_group` */

CREATE TABLE `lep_content_group` (
  `content_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lep_content_group` */

insert  into `lep_content_group`(`content_group_id`,`name`) values (1,'General');

/*Table structure for table `lep_coupon` */

CREATE TABLE `lep_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `persen` int(11) DEFAULT NULL,
  `expired` char(10) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `lep_coupon` */

/*Table structure for table `lep_document` */

CREATE TABLE `lep_document` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_document` */

/*Table structure for table `lep_email_template` */

CREATE TABLE `lep_email_template` (
  `email_template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`email_template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `lep_email_template` */

insert  into `lep_email_template`(`email_template_id`,`name`,`type`,`subject`,`body`) values (1,'new_pending_submission','user_notification','Your submission at {DIR_NAME}','Dear {RES_OWNER_NAME},\r\n\r\nWe have received your submission at {DIR_NAME}. It\'s currently in pending status and being reviewed by our staff. We will send you an email again with the result of your submission.\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(2,'resource_approved','user_notification','Approved submission at {DIR_NAME}','Dear {RES_OWNER_NAME},\r\n\r\nYour submission has been accepted at {DIR_NAME}.\r\n\r\nTitle: {RES_TITLE}\r\nUrl: {RES_URL}\r\nDescription: {RES_DESCRIPTION}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(3,'resource_rejected','user_notification','Rejected submission at {DIR_NAME}','Dear {RES_OWNER_NAME},\r\n\r\nYour submission has been rejected at {DIR_NAME}.\r\nPlease read again the submission guidelines and you may to resubmit again.\r\n\r\nTitle: {RES_TITLE}\r\nUrl: {RES_URL}\r\nDescription: {RES_DESCRIPTION}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(4,'new_pending_comment','user_notification','Your comment at {DIR_NAME}','We have received your comment at {DIR_NAME} for {RES_TITLE}. It\'s currently in pending status and being reviewed by our staff. We will send you an email again with the result.\r\n\r\nComment: {COMM_COMMENT}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(5,'comment_approved','user_notification','Approved comment at {DIR_NAME}','Your comment for {RES_TITLE} has been accepted at {DIR_NAME}.\r\n\r\nComment: {COMM_COMMENT}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(6,'comment_rejected','user_notification','Rejected comment at {DIR_NAME}','Your comment for {RES_TITLE} has been rejected at {DIR_NAME}.\r\n\r\nComment: {COMM_COMMENT}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(7,'lost_password','user_notification','Your password at {DIR_NAME}','Dear {USER_USERNAME},\r\n\r\nAs you requested, we send your password details are as follows:\r\n\r\nUsername: {USER_USERNAME}\r\nPassword: {NEW_PASSWORD}\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(10,'new_pending_submission_admin','admin_notification','You have new submission at {DIR_NAME}','You have received new submission at {DIR_NAME}. \r\n\r\nTitle: {RES_TITLE}\r\nUrl: {RES_URL}\r\nDescription: {RES_DESCRIPTION}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(11,'new_pending_comment_admin','admin_notification','You have new comment at {DIR_NAME}','You have received new comment for {RES_TITLE} at {DIR_NAME}. \r\n\r\nComment: {COMM_COMMENT}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(12,'new_user_registration_admin','admin_notification','You have new user registration at {DIR_NAME}','You have received new user registration at {DIR_NAME}. \r\n\r\nUsername: {USER_USERNAME}\r\nEmail: {USER_EMAIL}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(13,'new_category_request_admin','admin_notification','You have new category request at {DIR_NAME}','You have received new category request at {DIR_NAME}. \r\n\r\nCategory name: {CAT_TITLE}\r\nCategory parent: {CAT_PARENT}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(14,'new_user_registration','user_notification','Your registration at {DIR_NAME}','Dear {USER_USERNAME},\r\n\r\nThank you for your registration at {DIR_NAME}. Your login details are as follows:\r\n\r\nUsername: {USER_USERNAME}\r\nPassword: {USER_PASSWORD}\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(15,'new_pending_user_registration','user_notification','Welcome to {DIR_NAME}! Please Activate Your Account','Dear {USER_USERNAME},\r\n\r\nClick the link below to verify your email address and activate your account. Email verification helps protect your identity and allows you to participate safely on {DIR_NAME}.\r\n\r\n{VERIFICATION_LINK}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(16,'claim_resource','user_notification','Your resource clam at {DIR_NAME}','Dear {USER_USERNAME},\r\n\r\nAs you requested, we send you an instruction how to claim {RES_TITLE}.\r\n\r\nClick the following url to claim this link:\r\n{CLAIM_URL}\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(17,'new_pending_submission_confirmation','user_notification','Your submission at {DIR_NAME}, please confirm your submission','Dear {RES_OWNER_NAME},\r\n\r\nWe have received your submission at {DIR_NAME}. Before we start reviewing your submission, please click the following link to confirm your submission. \r\n\r\n{CONFIRM_LINK}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(18,'manual_payment_instruction','user_notification','Payment instruction','Dear {RES_OWNER_NAME},\r\n\r\n{INSTRUCTION}\r\n\r\nReference:\r\nID: {RES_RES_ID}\r\nTitle:  {RES_TITLE}\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(19,'banner_remainder_admin1','admin_notification','Banner {BANNER_ID} is going to expire in 5 days at {DIR_NAME}','The following banner will be expire in 5 days:\r\n\r\nBanner ID: {BANNER_ID}\r\nUrl: {BANNER_URL}\r\nExpire: {BANNER_EXPIRE}\r\nCode:\r\n{BANNER_CODE}\r\n\r\n\r\nTo extend the expiration date, go to the following url:\r\n{DIR_URL}/admin/banner.php?act=edit&id={BANNER_ID}\r\n\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}'),(20,'banner_remainder_admin2','admin_notification','Banner {BANNER_ID} is going to expire in 2 days at {DIR_NAME}','The following banner will be expire in 2 days:\r\n\r\nBanner ID: {BANNER_ID}\r\nUrl: {BANNER_URL}\r\nExpire: {BANNER_EXPIRE}\r\nCode:\r\n{BANNER_CODE}\r\n\r\n\r\nTo extend the expiration date, go to the following url:\r\n{DIR_URL}/admin/banner.php?act=edit&id={BANNER_ID}\r\n\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}\r\n'),(21,'banner_remainder_admin3','admin_notification','Banner {BANNER_ID} is expiring at {DIR_NAME}','The following banner is expiring today:\r\n\r\nBanner ID: {BANNER_ID}\r\nUrl: {BANNER_URL}\r\nExpire: {BANNER_EXPIRE}\r\nCode:\r\n{BANNER_CODE}\r\n\r\n\r\nTo extend the expiration date, go to the following url:\r\n{DIR_URL}/admin/banner.php?act=edit&id={BANNER_ID}\r\n\r\n\r\nThank you,\r\n\r\n{DIR_NAME}\r\n{DIR_URL}');

/*Table structure for table `lep_email_template_type` */

CREATE TABLE `lep_email_template_type` (
  `email_template_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email_template_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `lep_email_template_type` */

insert  into `lep_email_template_type`(`email_template_type_id`,`type`,`text`) values (1,'admin_notification','Administrator Notification'),(2,'user_notification','User Notification');

/*Table structure for table `lep_event` */

CREATE TABLE `lep_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `event` text,
  `date` char(10) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_event` */

/*Table structure for table `lep_gateway` */

CREATE TABLE `lep_gateway` (
  `gateway_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `option` text,
  `order_num` int(11) DEFAULT '0',
  `set_as_default` char(1) DEFAULT '0',
  PRIMARY KEY (`gateway_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `lep_gateway` */

insert  into `lep_gateway`(`gateway_id`,`name`,`title`,`option`,`order_num`,`set_as_default`) values (1,'paypal','Paypal','enable=0&paypal_email=',0,'1'),(2,'manual','Money Transfer','enable=0&instruction=To+complete+your+payment%2C+please+transfer+money+to+the+following+bank+account%3A%0D%0A%0D%0ABank+name+%3A%0D%0AAccount+number+%3A%0D%0AAccount+name+%3A%0D%0A%0D%0AAmount+to+pay%3A+%7BCURRENCY%7D+%7BAMOUNT%7D',10,'0'),(3,'alertpay','AlertPay','enable=0&alertpay_email=&ipn_security_code=&api_password=',20,'0'),(4,'alertpay_sub','AlertPay Subscription','enable=0&alertpay_email=&ipn_security_code=&api_password=',30,'0');

/*Table structure for table `lep_image` */

CREATE TABLE `lep_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_image` */

/*Table structure for table `lep_menu` */

CREATE TABLE `lep_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `auto` char(1) DEFAULT '0',
  `rel` varchar(255) DEFAULT NULL,
  `user` char(1) DEFAULT '1',
  `admin` char(1) DEFAULT '1',
  `anonymous` char(1) DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

/*Data for the table `lep_menu` */

insert  into `lep_menu`(`menu_id`,`group_id`,`type`,`value`,`title`,`order_num`,`auto`,`rel`,`user`,`admin`,`anonymous`) values (38,6,'url','usercp/','My Account',100,'0',NULL,'1','1','1'),(37,6,'page','contact.php','Contact Us',90,'1','','1','1','1'),(35,6,'page','request_new_category.php','Request New Category',30,'1',NULL,'1','1','1'),(34,6,'page','add.php','Submit',10,'1','','1','1','1'),(33,6,'url','.','Home',0,'1',NULL,'1','1','1'),(53,0,'resource','8','',0,'1',NULL,'1','1','1'),(40,6,'page','register.php','Sign Up',20,'1','','0','0','1'),(41,6,'url','logout.php','Logout',300,'0','','1','1','0'),(42,6,'url','login.php','Login',30,'0','','0','0','1'),(43,6,'url','admin/','Admin Panel',200,'0','','0','1','0'),(57,0,'page','makepayment.php','',0,'1',NULL,'1','1','1'),(56,0,'page','submitnew.php','',0,'1',NULL,'1','1','1'),(55,0,'resource','9','',0,'1',NULL,'1','1','1'),(54,0,'page','categorypage.php','',0,'1',NULL,'1','1','1'),(58,0,'resource','12','',0,'1',NULL,'1','1','1');

/*Table structure for table `lep_menu_group` */

CREATE TABLE `lep_menu_group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `all_pages` char(1) DEFAULT '0',
  `html_class` varchar(255) NOT NULL,
  `html_id` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `lep_menu_group` */

insert  into `lep_menu_group`(`group_id`,`title`,`position`,`order_num`,`all_pages`,`html_class`,`html_id`) values (6,'Menu #1','menu1',0,'1','','main_menu');

/*Table structure for table `lep_menu_group_content` */

CREATE TABLE `lep_menu_group_content` (
  `group_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_menu_group_content` */

insert  into `lep_menu_group_content`(`group_id`,`content_id`) values (1,1);

/*Table structure for table `lep_menu_group_page` */

CREATE TABLE `lep_menu_group_page` (
  `group_id` int(10) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  KEY `page` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_menu_group_page` */

insert  into `lep_menu_group_page`(`group_id`,`page_id`) values (1,1);

/*Table structure for table `lep_news` */

CREATE TABLE `lep_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `news` text,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_news` */

/*Table structure for table `lep_page` */

CREATE TABLE `lep_page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `option` text,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  PRIMARY KEY (`page_id`),
  KEY `NewIndex1` (`filename`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Data for the table `lep_page` */

insert  into `lep_page`(`page_id`,`name`,`filename`,`position`,`order_num`,`option`,`page_title`,`meta_keywords`,`meta_description`) values (1,'Front Page','index.php','main',100,'visible=1&show_title=1&title=Browse+by+category&columns=3&children=6&html_class_suffix=','INDEXU 7','directory script, php web directory, directory management script, content management system','The most advanced directory management system'),(2,'Category Page','categorypage.php','main',100,'cl_visible=1&cl_show_title=1&cl_title=Sub+categories%3A+%7Bcategory_name%7D&cl_columns=2&cl_children=5&cl_html_class_suffix=&fl_visible=1&fl_show_title=1&fl_title=Featured+listing%3A+%7Bcategory_name%7D&fl_nrows=100&fl_sort=rand%28%29&fl_sort_a_d=asc&fl_template=rows_featured.php&fl_html_class_suffix=&rl_visible=1&rl_show_title=1&rl_title=Listing+in+this+category%3A+%7Bcategory_name%7D&rl_nrows=10&rl_sort=created_at&rl_sort_a_d=desc&rl_template=rows.php&rl_also_list_subcategories=0&rl_html_class_suffix=','{title}','',''),(3,'Submit Page','add.php','main',100,'show_title=1&title=Submit+new+listing&require_login=0&html_class_suffix=','Submit new listing','',''),(4,'Register','register.php','main',100,'show_title=1&title=Sign+Up&html_class_suffix=','Register','',''),(5,'Login','login.php','main',100,'show_title=1&title=Login&html_class_suffix=','Login','',''),(6,'Request New Category','request_new_category.php','main',100,'show_title=1&title=Request+a+New+Category&html_class_suffix=','Request a New Category','',''),(8,'User Panel / My Profile','usercp/profile.php','main',100,'show_title=1&title=My+Profile&html_class_suffix=','My Profile','',''),(12,'Static Page','c.php','main',100,'show_title=1&title=%7Btitle%7D&html_class_suffix=','','',''),(13,'Search Result','search.php','main',100,'fl_visible=1&fl_show_title=1&fl_title=Featured+listing&fl_nrows=5&fl_sort=rand%28%29&fl_sort_a_d=asc&fl_template=rows_featured.php&fl_html_class_suffix=&rl_visible=1&rl_show_title=1&rl_title=Resources&rl_nrows=10&rl_sort=created_at&rl_sort_a_d=desc&rl_template=rows.php&rl_html_class_suffix=','Search Result','',''),(14,'Detail Page','d.php','main',100,'res_visible=1&res_show_title=0&res_title=Detail+Information&res_template=rows_detail.php&res_html_class_suffix=&comment_visible=1&comment_show_title=1&comment_title=Comment+List&comment_nrows=5&comment_sort=url&comment_sort_a_d=&comment_template=comment_list.php&comment_html_class_suffix=&comment_form_visible=1&comment_form_show_title=1&comment_form_title=Add+your+comment&comment_form_html_class_suffix=','','',''),(15,'Comment','comment.php','main',100,'show_title=1&title=Add+your+comment+%3A+%7Btitle%7D&html_class_suffix=','Comment','',''),(16,'404 Error','route.php','main',100,'show_title=1&title=Page+Not+Found&html_class_suffix=','Page Not Found','',''),(17,'Tag Page','tag.php','main',100,'fl_visible=1&fl_show_title=1&fl_title=Featured+listing%3A+%7Btag%7D&fl_nrows=100&fl_sort=rand%28%29&fl_sort_a_d=asc&fl_html_class_suffix=&rl_visible=1&rl_show_title=1&rl_title=Browse+by+tag%3A+%7Btag%7D&rl_nrows=10&rl_sort=created_at&rl_sort_a_d=desc&rl_html_class_suffix=','','',''),(21,'Lost Password','lost_password.php','main',100,'show_title=1&title=Lost+Password&html_class_suffix=','Lost Password','',''),(23,'User Panel / Index','usercp/index.php','main',0,NULL,'User Panel','',''),(24,'User Panel / Change Password','usercp/password.php','main',0,'show_title=1&title=Change+Password&html_class_suffix=','Change Password','',''),(25,'User Panel / My Listing','usercp/myres.php','main',0,'rl_visible=1&rl_show_title=1&rl_title=My+Listing&rl_nrows=1000&rl_sort=created_at&rl_sort_a_d=asc&rl_template=rows_myres.php&rl_html_class_suffix=','My Listing','',''),(26,'User Panel / Edit Listing','usercp/res_edit.php','main',0,'show_title=1&title=Edit+a+Listing&html_class_suffix=','Edit a Listing','',''),(27,'User Panel / Claim','usercp/claim.php','main',0,'show_title=1&title=Claim+a+Listing&html_class_suffix=&rl_show_title=1&rl_title=Search+Result&rl_nrows=20&rl_sort=title&rl_sort_a_d=asc&rl_template=rows_claim.php&rl_html_class_suffix=','Claim a Listing','',''),(28,'Contact Us','contact.php','main',0,'show_title=1&title=Contact+Us&html_class_suffix=','Contact Us','',''),(29,'Report This Listing','report.php','main',0,'show_title=1&title=Report+This+Listing&html_class_suffix=%3D','Report This Listing','',''),(30,'Upgrade Page','upgrade.php','main',0,'show_title=1&title=Upgrade+a+Listing&html_class_suffix=','Upgrade a Listing','',''),(31,'Listing by PageRank','prlist.php','main',100,'fl_visible=1&fl_show_title=1&fl_title=Featured+listing&fl_nrows=5&fl_sort=rand%28%29&fl_sort_a_d=asc&fl_template=rows_featured.php&fl_html_class_suffix=&rl_visible=1&rl_show_title=1&rl_title=Listing&rl_nrows=10&rl_sort=created_at&rl_sort_a_d=asc&rl_template=rows.php&rl_html_class_suffix=','Listing by PageRank','',''),(32,'User Panel / Image','usercp/image.php','main',0,'','Image','',''),(33,'User Panel / Document','usercp/document.php','main',0,'','Document','',''),(34,'User Panel / Product','usercp/product.php','main',0,'','Product','',''),(35,'User Panel / Promo','usercp/promo.php','main',0,'','Promo','',''),(36,'User Panel / News','usercp/news.php','main',0,'','News','',''),(37,'User Panel / Event','usercp/event.php','main',0,'','Event','',''),(38,'User Panel / Article','usercp/article.php','main',0,'','Article','',''),(39,'User Panel / Video','usercp/video.php','main',0,'','Video','',''),(42,'Make Payment','makepayment.php','main',0,'show_title=1&title=Make+Payment&html_class_suffix=','Make Payment','','');

/*Table structure for table `lep_prod_category` */

CREATE TABLE `lep_prod_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `status` char(1) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `path_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `path` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_prod_category` */

/*Table structure for table `lep_product` */

CREATE TABLE `lep_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prod_cat_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_product` */

/*Table structure for table `lep_promo` */

CREATE TABLE `lep_promo` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `promo` text,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`promo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_promo` */

/*Table structure for table `lep_resource` */

CREATE TABLE `lep_resource` (
  `res_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) DEFAULT '1',
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `hits` int(11) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  `submit_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `last_update` char(10) DEFAULT NULL,
  `featured` char(1) DEFAULT '0',
  `featured_expired` char(10) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `tag` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ss_googlepr` varchar(255) NOT NULL,
  `ss_alexarank` varchar(255) NOT NULL,
  `ss_google_indexed` varchar(255) NOT NULL,
  `ss_yahoo_indexed` varchar(255) NOT NULL,
  `ss_msn_indexed` varchar(255) NOT NULL,
  `ss_google_linkback` varchar(255) NOT NULL,
  `ss_yahoo_linkback` varchar(255) NOT NULL,
  `ss_last_update` char(10) NOT NULL,
  `vote` int(11) DEFAULT '0',
  `reciprocal_url` varchar(255) DEFAULT NULL,
  `last_checked_online` char(10) DEFAULT '',
  `last_checked_reciprocal` char(10) DEFAULT '',
  `online` char(1) DEFAULT '1',
  `reciprocal` char(1) DEFAULT '1',
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `suspended` char(1) DEFAULT '0',
  `suspended_reason` varchar(255) DEFAULT '0',
  `listing_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `title` (`title`),
  KEY `status` (`status`),
  KEY `category` (`category_id`),
  KEY `featured` (`featured`),
  KEY `featured_expired` (`featured_expired`),
  KEY `created_at` (`created_at`),
  KEY `hits` (`hits`),
  KEY `ss_googlepr` (`ss_googlepr`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `lep_resource` */

/*Table structure for table `lep_resource_field` */

CREATE TABLE `lep_resource_field` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `v_required` char(1) NOT NULL DEFAULT '0',
  `searchable` char(1) NOT NULL DEFAULT '0',
  `type` enum('inputText','inputPassword','textarea','inputCheckbox','inputRadio','select','selectmulti','inputFile','richtext','date') DEFAULT 'inputText',
  `val` text,
  `default_val` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `admin_only` char(1) DEFAULT '0',
  `custom` char(1) DEFAULT '1',
  `v_required_help` varchar(255) DEFAULT NULL,
  `v_string` char(1) DEFAULT '0',
  `v_string_help` varchar(255) DEFAULT NULL,
  `v_string_min` varchar(255) DEFAULT NULL,
  `v_string_max` varchar(255) DEFAULT NULL,
  `v_string_regexp` varchar(255) DEFAULT NULL,
  `v_string_equals` varchar(255) DEFAULT NULL,
  `v_string_differs` varchar(255) DEFAULT NULL,
  `v_number` char(1) DEFAULT '0',
  `v_number_help` varchar(255) DEFAULT NULL,
  `v_number_min` varchar(255) DEFAULT NULL,
  `v_number_max` varchar(255) DEFAULT NULL,
  `v_number_real` char(1) DEFAULT NULL,
  `v_date` char(1) DEFAULT '0',
  `v_date_help` varchar(255) DEFAULT NULL,
  `v_date_format` varchar(255) DEFAULT NULL,
  `v_file` char(1) DEFAULT '0',
  `v_file_help` varchar(255) DEFAULT NULL,
  `v_file_min` varchar(255) DEFAULT NULL,
  `v_file_max` varchar(255) DEFAULT NULL,
  `v_file_type` varchar(255) DEFAULT NULL,
  `v_custom` char(1) DEFAULT '0',
  `v_custom_help` varchar(255) DEFAULT NULL,
  `v_custom_php` text,
  `v_custom_js` text,
  `v_unique` char(1) DEFAULT NULL,
  `v_unique_help` varchar(255) DEFAULT NULL,
  `v_unique_field` varchar(255) DEFAULT NULL,
  `v_unique_table` varchar(255) DEFAULT NULL,
  `image_resize` char(1) DEFAULT '0',
  `image_resize_width` int(11) DEFAULT NULL,
  `image_resize_height` int(11) DEFAULT NULL,
  `featured_only` char(1) DEFAULT '0',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `lep_resource_field` */

insert  into `lep_resource_field`(`field_id`,`name`,`text`,`v_required`,`searchable`,`type`,`val`,`default_val`,`order_num`,`admin_only`,`custom`,`v_required_help`,`v_string`,`v_string_help`,`v_string_min`,`v_string_max`,`v_string_regexp`,`v_string_equals`,`v_string_differs`,`v_number`,`v_number_help`,`v_number_min`,`v_number_max`,`v_number_real`,`v_date`,`v_date_help`,`v_date_format`,`v_file`,`v_file_help`,`v_file_min`,`v_file_max`,`v_file_type`,`v_custom`,`v_custom_help`,`v_custom_php`,`v_custom_js`,`v_unique`,`v_unique_help`,`v_unique_field`,`v_unique_table`,`image_resize`,`image_resize_width`,`image_resize_height`,`featured_only`) values (17,'url','URL','1','0','inputText','','',0,'0','1','URL is required','1','Invalid URL','','','/^(http|https|ftp):\\/\\/([A-Z0-9][A-Z0-9_-]*(?:\\.[A-Z0-9][A-Z0-9_-]*)+):?(\\d+)?\\/?/i','','','0','','','','0','0','','','0','','0','0','','0','','','','1','Your URL is exist','url','lep_resource','0',NULL,NULL,'0'),(2,'title','Title','1','1','inputText','','',1,'0','0',NULL,'0',NULL,'','',NULL,NULL,NULL,'0',NULL,'','',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(16,'description','Description','0','1','textarea','','',2,'0','1','','0','','','','','','','0','','','','0','0','','','0','','0','0','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(14,'category_id','Category','1','0','select','','',3,'0','0','Category is required','0','','','','','','','0','','','','1','0','','','0','','','','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(18,'owner_name','Your name','1','0','inputText','','',4,'0','1','Your name is required','0','','','','','','','0','','','','0','0','','','0','','','','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(19,'email','Your email','1','0','inputText','','',5,'0','1','Your email is required','1','Invalid email pattern','','','/^[_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*$/','','','0','','','','0','0','','','0','','','','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(22,'tag','Tag','0','1','textarea','','',8,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(23,'address','Address','0','0','inputText','','',107,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(24,'city','City','0','0','inputText','','',108,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(25,'state','State','0','0','inputText','','',109,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(26,'zip','Zip','0','0','inputText','','',110,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(27,'country','Country','0','0','inputText','','',110,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(28,'phone','Phone','0','0','inputText','','',12,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(29,'fax','Fax','0','0','inputText','','',13,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(30,'logo','Logo','0','0','inputFile','','',14,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','1',150,150,'1');

/*Table structure for table `lep_resource_temp` */

CREATE TABLE `lep_resource_temp` (
  `res_id` mediumint(8) unsigned NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` char(1) DEFAULT '1',
  `description` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `hits` int(11) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  `last_update` char(10) DEFAULT NULL,
  `featured` char(1) DEFAULT '0',
  `featured_expired` char(10) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `tag` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `suspended` char(1) DEFAULT '0',
  `suspended_reason` varchar(255) DEFAULT '0',
  `listing_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `lep_resource_temp` */

/*Table structure for table `lep_socialsite` */

CREATE TABLE `lep_socialsite` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `enable` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

/*Data for the table `lep_socialsite` */

insert  into `lep_socialsite`(`site_id`,`name`,`url`,`icon`,`enable`) values (1,'BarraPunto','http://barrapunto.com/submit.pl?subj=TITLE&amp;story=PERMALINK','barrapunto.png','0'),(2,'Bitacoras.com','http://bitacoras.com/anotaciones/PERMALINK','bitacoras.png','0'),(3,'BlinkList','http://www.blinklist.com/index.php?Action=Blink/addblink.php&amp;Url=PERMALINK&amp;Title=TITLE','blinklist.png','0'),(4,'blogmarks','http://blogmarks.net/my/new.php?mini=1&amp;simple=1&amp;url=PERMALINK&amp;title=TITLE','blogmarks.png','0'),(5,'Blogosphere News','http://www.blogospherenews.com/submit.php?url=PERMALINK&amp;title=TITLE','blogospherenews.png','0'),(6,'blogtercimlap','http://cimlap.blogter.hu/index.php?action=suggest_link&amp;title=TITLE&amp;url=PERMALINK','blogter.png','0'),(7,'Faves','http://faves.com/Authoring.aspx?u=PERMALINK&amp;title=TITLE','bluedot.png','0'),(8,'connotea','http://www.connotea.org/addpopup?continue=confirm&amp;uri=PERMALINK&amp;title=TITLE&amp;description=EXCERPT','connotea.png','0'),(9,'Current','http://current.com/clipper.htm?url=PERMALINK&amp;title=TITLE','current.png','0'),(10,'del.icio.us','http://delicious.com/post?url=PERMALINK&amp;title=TITLE&amp;notes=EXCERPT','delicious.png','0'),(11,'Digg','http://digg.com/submit?phase=2&amp;url=PERMALINK&amp;title=TITLE&amp;bodytext=EXCERPT','digg.png','1'),(12,'Diigo','http://www.diigo.com/post?url=PERMALINK&amp;title=TITLE','diigo.png','0'),(13,'DotNetKicks','http://www.dotnetkicks.com/kick/?url=PERMALINK&amp;title=TITLE','dotnetkicks.png','0'),(14,'DZone','http://www.dzone.com/links/add.html?url=PERMALINK&amp;title=TITLE','dzone.png','0'),(15,'eKudos','http://www.ekudos.nl/artikel/nieuw?url=PERMALINK&amp;title=TITLE&amp;desc=EXCERPT','ekudos.png','0'),(16,'email','mailto:?subject=TITLE&amp;body=PERMALINK','email_link.png','0'),(17,'Facebook','http://www.facebook.com/share.php?u=PERMALINK&amp;t=TITLE','facebook.png','1'),(18,'Fark','http://cgi.fark.com/cgi/fark/farkit.pl?h=TITLE&amp;u=PERMALINK','fark.png','0'),(19,'Fleck','http://beta3.fleck.com/bookmarklet.php?url=PERMALINK&amp;title=TITLE','fleck.png','0'),(20,'FriendFeed','http://www.friendfeed.com/share?title=TITLE&amp;link=PERMALINK','friendfeed.png','0'),(21,'FSDaily','http://www.fsdaily.com/submit?url=PERMALINK&amp;title=TITLE','fsdaily.png','0'),(22,'Global Grind','http://globalgrind.com/submission/submit.aspx?url=PERMALINK&amp;type=Article&amp;title=TITLE','globalgrind.png','0'),(23,'Google','http://www.google.com/bookmarks/mark?op=edit&amp;bkmk=PERMALINK&amp;title=TITLE&amp;annotation=EXCERPT','googlebookmark.png','0'),(24,'Gwar','http://www.gwar.pl/DodajGwar.html?u=PERMALINK','gwar.png','0'),(25,'HackerNews','http://news.ycombinator.com/submitlink?u=PERMALINK&amp;t=TITLE','hackernews.png','0'),(26,'Haohao','http://www.haohaoreport.com/submit.php?url=PERMALINK&amp;title=TITLE','haohao.png','0'),(27,'HealthRanker','http://healthranker.com/submit.php?url=PERMALINK&amp;title=TITLE','healthranker.png','0'),(28,'HelloTxt','http://hellotxt.com/?status=TITLE+PERMALINK','hellotxt.png','0'),(29,'Hemidemi','http://www.hemidemi.com/user_bookmark/new?title=TITLE&amp;url=PERMALINK','hemidemi.png','0'),(30,'Hyves','http://www.hyves.nl/profilemanage/add/tips/?name=TITLE&amp;text=EXCERPT+PERMALINK&amp;rating=5','hyves.png','0'),(31,'Identi.ca','http://identi.ca/notice/new?status_textarea=PERMALINK','identica.png','0'),(32,'IndianPad','http://www.indianpad.com/submit.php?url=PERMALINK','indianpad.png','0'),(33,'Internetmedia','http://internetmedia.hu/submit.php?url=PERMALINK','im.png','0'),(34,'Kirtsy','http://www.kirtsy.com/submit.php?url=PERMALINK&amp;title=TITLE','kirtsy.png','0'),(35,'laaik.it','http://laaik.it/NewStoryCompact.aspx?uri=PERMALINK&amp;headline=TITLE&amp;cat=5e082fcc-8a3b-47e2-acec-fdf64ff19d12','laaikit.png','0'),(36,'LinkArena','http://linkarena.com/bookmarks/addlink/?url=PERMALINK&amp;title=TITLE','linkarena.png','0'),(37,'LinkaGoGo','http://www.linkagogo.com/go/AddNoPopup?url=PERMALINK&amp;title=TITLE','linkagogo.png','0'),(38,'LinkedIn','http://www.linkedin.com/shareArticle?mini=true&amp;url=PERMALINK&amp;title=TITLE&amp;source=BLOGNAME&amp;summary=EXCERPT','linkedin.png','0'),(39,'Linkter','http://www.linkter.hu/index.php?action=suggest_link&amp;url=PERMALINK&amp;title=TITLE','linkter.png','0'),(40,'Live','https://favorites.live.com/quickadd.aspx?marklet=1&amp;url=PERMALINK&amp;title=TITLE','live.png','0'),(41,'Meneame','http://meneame.net/submit.php?url=PERMALINK','meneame.png','0'),(42,'MisterWong','http://www.mister-wong.com/addurl/?bm_url=PERMALINK&amp;bm_description=TITLE&amp;plugin=soc','misterwong.png','0'),(43,'MisterWong.DE','http://www.mister-wong.de/addurl/?bm_url=PERMALINK&amp;bm_description=TITLE&amp;plugin=soc','misterwong.png','0'),(44,'Mixx','http://www.mixx.com/submit?page_url=PERMALINK&amp;title=TITLE','mixx.png','0'),(45,'muti','http://www.muti.co.za/submit?url=PERMALINK&amp;title=TITLE','muti.png','0'),(46,'MyShare','http://myshare.url.com.tw/index.php?func=newurl&amp;url=PERMALINK&amp;desc=TITLE','myshare.png','0'),(47,'MySpace','http://www.myspace.com/Modules/PostTo/Pages/?u=PERMALINK&amp;t=TITLE','myspace.png','0'),(48,'MSNReporter','http://reporter.nl.msn.com/?fn=contribute&amp;Title=TITLE&amp;URL=PERMALINK&amp;cat_id=6&amp;tag_id=31&amp;Remark=EXCERPT','msnreporter.png','0'),(49,'N4G','http://www.n4g.com/tips.aspx?url=PERMALINK&amp;title=TITLE','n4g.png','0'),(50,'Netvibes','http://www.netvibes.com/share?title=TITLE&amp;url=PERMALINK','netvibes.png','0'),(51,'NewsVine','http://www.newsvine.com/_tools/seed&amp;save?u=PERMALINK&amp;h=TITLE','newsvine.png','0'),(52,'Netvouz','http://www.netvouz.com/action/submitBookmark?url=PERMALINK&amp;title=TITLE&amp;popup=no','netvouz.png','0'),(53,'NuJIJ','http://nujij.nl/jij.lynkx?t=TITLE&amp;u=PERMALINK&amp;b=EXCERPT','nujij.png','0'),(54,'Ping.fm','http://ping.fm/ref/?link=PERMALINK&amp;title=TITLE&amp;body=EXCERPT','ping.png','0'),(55,'Posterous','http://posterous.com/share?linkto=PERMALINK&amp;title=TITLE&amp;selection=EXCERPT','posterous.png','0'),(64,'Simpy','http://www.simpy.com/simpy/LinkAdd.do?href=PERMALINK&amp;title=TITLE','simpy.png','0'),(63,'Segnalo','http://segnalo.alice.it/post.html.php?url=PERMALINK&amp;title=TITLE','segnalo.png','0'),(58,'Propeller','http://www.propeller.com/submit/?url=PERMALINK','propeller.png','0'),(59,'Ratimarks','http://ratimarks.org/bookmarks.php/?action=add&address=PERMALINK&amp;title=TITLE','ratimarks.png','0'),(60,'Rec6','http://rec6.via6.com/link.php?url=PERMALINK&amp;=TITLE','rec6.png','0'),(61,'Reddit','http://reddit.com/submit?url=PERMALINK&amp;title=TITLE','reddit.png','0'),(62,'Scoopeo','http://www.scoopeo.com/scoop/new?newurl=PERMALINK&amp;title=TITLE','scoopeo.png','0'),(65,'Slashdot','http://slashdot.org/bookmark.pl?title=TITLE&amp;url=PERMALINK','slashdot.png','0'),(66,'Socialogs','http://socialogs.com/add_story.php?story_url=PERMALINK&amp;story_title=TITLE','socialogs.png','0'),(67,'SphereIt','http://www.sphere.com/search?q=sphereit:PERMALINK&amp;title=TITLE','sphere.png','0'),(68,'Sphinn','http://sphinn.com/index.php?c=post&amp;m=submit&amp;link=PERMALINK','sphinn.png','0'),(69,'StumbleUpon','http://www.stumbleupon.com/submit?url=PERMALINK&amp;title=TITLE','stumbleupon.png','0'),(70,'Technorati','http://technorati.com/faves?add=PERMALINK','technorati.png','1'),(71,'ThisNext','http://www.thisnext.com/pick/new/submit/sociable/?url=PERMALINK&amp;name=TITLE','thisnext.png','0'),(72,'Tipd','http://tipd.com/submit.php?url=PERMALINK','tipd.png','0'),(73,'Tumblr','http://www.tumblr.com/share?v=3&amp;u=PERMALINK&amp;t=TITLE&amp;s=EXCERPT','tumblr.png','0'),(74,'Twitter','http://twitter.com/home?status=TITLE%20-%20PERMALINK','twitter.png','1'),(75,'Upnews','http://www.upnews.it/submit?url=PERMALINK&amp;title=TITLE','upnews.png','0'),(76,'Webnews.de','http://www.webnews.de/einstellen?url=PERMALINK&amp;title=TITLE','webnews.png','0'),(77,'Webride','http://webride.org/discuss/split.php?uri=PERMALINK&amp;title=TITLE','webride.png','0'),(78,'Wikio','http://www.wikio.com/vote?url=PERMALINK','wikio.png','0'),(79,'Wikio FR','http://www.wikio.fr/vote?url=PERMALINK','wikio.png','0'),(80,'Wikio IT','http://www.wikio.it/vote?url=PERMALINK','wikio.png','0'),(81,'Wists','http://wists.com/s.php?c=&amp;r=PERMALINK&amp;title=TITLE','wists.png','0'),(82,'Wykop','http://www.wykop.pl/dodaj?url=PERMALINK','wykop.png','0'),(83,'Xerpi','http://www.xerpi.com/block/add_link_from_extension?url=PERMALINK&amp;title=TITLE','xerpi.png','0'),(84,'YahooBuzz','http://buzz.yahoo.com/submit/?submitUrl=PERMALINK&amp;submitHeadline=TITLE&amp;submitSummary=EXCERPT&amp;submitCategory=science&amp;submitAssetType=text','yahoobuzz.png','0'),(85,'Yahoo! Bookmarks','http://bookmarks.yahoo.com/toolbar/savebm?u=PERMALINK&amp;t=TITLE&opener=bm&amp;ei=UTF-8&amp;d=EXCERPT','yahoomyweb.png','0'),(86,'Yigg','http://yigg.de/neu?exturl=PERMALINK&amp;exttitle=TITLE','yiggit.png','0');

/*Table structure for table `lep_tag` */

CREATE TABLE `lep_tag` (
  `tag` varchar(255) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag`,`category_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `lep_tag` */

/*Table structure for table `lep_tag_seo` */

CREATE TABLE `lep_tag_seo` (
  `tag` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  PRIMARY KEY (`tag`),
  KEY `seo_title` (`seo_title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_tag_seo` */

/*Table structure for table `lep_user` */

CREATE TABLE `lep_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` char(1) DEFAULT '1',
  `code` char(6) DEFAULT NULL,
  `created_at` char(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `lep_user` */

insert  into `lep_user`(`user_id`,`username`,`password`,`email`,`status`,`code`,`created_at`,`first_name`,`last_name`) values (1,'admin','c3284d0f94606de1fd2af172aba15bf3','dodyrw@gmail.com','1',NULL,'',NULL,NULL);

/*Table structure for table `lep_user_field` */

CREATE TABLE `lep_user_field` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `v_required` char(1) NOT NULL DEFAULT '0',
  `searchable` char(1) NOT NULL DEFAULT '0',
  `type` enum('inputText','inputPassword','textarea','inputCheckbox','inputRadio','select','selectmulti','inputFile','richtext','date') DEFAULT 'inputText',
  `val` text,
  `default_val` varchar(255) DEFAULT NULL,
  `order_num` int(11) DEFAULT '0',
  `admin_only` char(1) DEFAULT '0',
  `custom` char(1) DEFAULT '1',
  `v_required_help` varchar(255) DEFAULT NULL,
  `v_string` char(1) DEFAULT '0',
  `v_string_help` varchar(255) DEFAULT NULL,
  `v_string_min` varchar(255) DEFAULT NULL,
  `v_string_max` varchar(255) DEFAULT NULL,
  `v_string_regexp` varchar(255) DEFAULT NULL,
  `v_string_equals` varchar(255) DEFAULT NULL,
  `v_string_differs` varchar(255) DEFAULT NULL,
  `v_number` char(1) DEFAULT '0',
  `v_number_help` varchar(255) DEFAULT NULL,
  `v_number_min` varchar(255) DEFAULT NULL,
  `v_number_max` varchar(255) DEFAULT NULL,
  `v_number_real` char(1) DEFAULT NULL,
  `v_date` char(1) DEFAULT '0',
  `v_date_help` varchar(255) DEFAULT NULL,
  `v_date_format` varchar(255) DEFAULT NULL,
  `v_file` char(1) DEFAULT '0',
  `v_file_help` varchar(255) DEFAULT NULL,
  `v_file_min` varchar(255) DEFAULT NULL,
  `v_file_max` varchar(255) DEFAULT NULL,
  `v_file_type` varchar(255) DEFAULT NULL,
  `v_custom` char(1) DEFAULT '0',
  `v_custom_help` varchar(255) DEFAULT NULL,
  `v_custom_php` text,
  `v_custom_js` text,
  `v_unique` char(1) DEFAULT NULL,
  `v_unique_help` varchar(255) DEFAULT NULL,
  `v_unique_field` varchar(255) DEFAULT NULL,
  `v_unique_table` varchar(255) DEFAULT NULL,
  `image_resize` char(1) DEFAULT '0',
  `image_resize_width` int(11) DEFAULT NULL,
  `image_resize_height` int(11) DEFAULT NULL,
  `featured_only` char(1) DEFAULT '0',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `lep_user_field` */

insert  into `lep_user_field`(`field_id`,`name`,`text`,`v_required`,`searchable`,`type`,`val`,`default_val`,`order_num`,`admin_only`,`custom`,`v_required_help`,`v_string`,`v_string_help`,`v_string_min`,`v_string_max`,`v_string_regexp`,`v_string_equals`,`v_string_differs`,`v_number`,`v_number_help`,`v_number_min`,`v_number_max`,`v_number_real`,`v_date`,`v_date_help`,`v_date_format`,`v_file`,`v_file_help`,`v_file_min`,`v_file_max`,`v_file_type`,`v_custom`,`v_custom_help`,`v_custom_php`,`v_custom_js`,`v_unique`,`v_unique_help`,`v_unique_field`,`v_unique_table`,`image_resize`,`image_resize_width`,`image_resize_height`,`featured_only`) values (1,'username','Username','1','0','inputText','','',0,'0','0','','1','Username must be alphanumeric','','','/^[a-zA-Z0-9]+$/','','','0','','','','1','0','','','0','','0','0','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(2,'password','Password','1','0','inputText','','',1,'0','0','','0','','','','','','','0','','','','1','0','','','0','','0','0','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(3,'email','Email','1','0','inputText','','',2,'0','0','','1','','','','/^[_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*$/','','','0','','','','1','0','','','0','','0','0','','0','','','',NULL,NULL,NULL,NULL,'0',NULL,NULL,'0'),(4,'first_name','First Name','0','0','inputText','','',3,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0'),(5,'last_name','Last Name','0','0','inputText','','',4,'0','1','','0','','','','','','','0','','','','0','0','','','0','','','','','0','','',NULL,'1','','','','0',0,0,'0');

/*Table structure for table `lep_video` */

CREATE TABLE `lep_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `youtube_id` varchar(255) DEFAULT NULL,
  `description` text,
  `status` char(1) DEFAULT '0',
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_video` */

/*Table structure for table `lep_vote` */

CREATE TABLE `lep_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` smallint(6) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` char(10) DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_vote` */

/*Table structure for table `lep_widget` */

CREATE TABLE `lep_widget` (
  `widget_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `order_num` varchar(255) DEFAULT NULL,
  `container` char(1) DEFAULT '0',
  PRIMARY KEY (`widget_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `lep_widget` */

insert  into `lep_widget`(`widget_id`,`name`,`file`,`position`,`order_num`,`container`) values (2,'Random Resource','random_resource.php','sidebar1','20','0'),(3,'Category List','category_list.php','sidebar1','1000','0'),(9,'Top Resource','top_resource.php','main','','0'),(10,'New Resource','new_resource.php','main','','0'),(11,'Featured Resource','featured_resource.php','main','','0'),(12,'Tag cloud','tag_cloud.php','main','','0'),(13,'Breadcrumb','breadcrumb.php','main','0','0'),(14,'Directory Stat','dir_stat.php','ads1','','0'),(15,'Static Links','static_links.php','ads1','','0'),(16,'Custom','custom.php','main','','0'),(17,'Search Box','search_box.php','ad_space1','','0'),(18,'User Panel Menu','user_panel_menu.php','ad_space1','','0'),(19,'Login Box','login_box.php','sidebar2','','0'),(20,'PRList','prlist.php','sidebar','10','0'),(21,'RSS News','rss_news.php','main','','0');

/*Table structure for table `lep_widget_placement` */

CREATE TABLE `lep_widget_placement` (
  `widget_placement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `option` text,
  `order_num` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `avail_position` varchar(255) DEFAULT NULL,
  `all_pages` char(1) DEFAULT '0',
  PRIMARY KEY (`widget_placement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `lep_widget_placement` */

insert  into `lep_widget_placement`(`widget_placement_id`,`widget_id`,`name`,`option`,`order_num`,`position`,`avail_position`,`all_pages`) values (3,3,'category_list_1','show_title=1&title=Main+Categories&html_class_suffix=',2,'sidebar','','0'),(19,2,'random_res_1','show_title=1&title=Random&nrows=10&html_class_suffix=',10,'footer','','0'),(29,9,'top_res_1','show_title=1&title=Top+Hits&nrows=10&html_class_suffix=',30,'footer','','0'),(30,10,'new_res_1','show_title=1&title=Latest+Additions&nrows=10&html_class_suffix=',0,'footer','','0'),(31,11,'featured_res_1','show_title=1&title=Featured+websites&nrows=5&html_class_suffix=',0,'sidebar','','0'),(32,12,'tag_cloud_1','show_title=1&title=Tag+cloud&nrows=&html_class_suffix=',100,'main','','0'),(35,13,'Breadcrumb','show_title=0&title=You+are+%C2%BB&html_class_suffix=',0,'breadcrumb','','0'),(36,14,'dir_stat_1','show_title=1&title=Statistics&html_class_suffix=',10,'sidebar','','0'),(42,18,'User Panel Menu','show_title=1&title=User+Panel+Menu&html_class_suffix=',0,'sidebar','','0'),(43,16,'User Panel Index welcome message','show_title=0&title=&custom_output=%3Cp%3EWelcome+to+user+panel.+Here+you+can+manage+your+account+and+resources.%3C%2Fp%3E&html_class_suffix=',0,'main','','0'),(49,19,'login_box_1','show_title=1&title=Login&html_class_suffix=',0,'sidebar','','1'),(52,20,'PR Listing','show_title=1&title=Listing+by+GooglePR&min_pr=0&hide_empty=0&html_class_suffix=',10,'sidebar',NULL,'1'),(54,14,'dir_stat_2','show_title=1&title=Statistics&html_class_suffix=',0,'bottom1',NULL,'0');

/*Table structure for table `lep_widget_placement_content` */

CREATE TABLE `lep_widget_placement_content` (
  `widget_placement_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_widget_placement_content` */

insert  into `lep_widget_placement_content`(`widget_placement_id`,`content_id`) values (3,100),(54,100),(55,100),(56,100);

/*Table structure for table `lep_widget_placement_page` */

CREATE TABLE `lep_widget_placement_page` (
  `widget_placement_id` int(10) DEFAULT NULL,
  `page_id` int(10) DEFAULT NULL,
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `lep_widget_placement_page` */

insert  into `lep_widget_placement_page`(`widget_placement_id`,`page_id`) values (36,1),(42,8),(3,30),(17,7),(17,6),(17,5),(17,4),(17,3),(17,1),(17,8),(17,10),(26,2),(29,1),(3,17),(3,3),(3,12),(3,13),(3,6),(3,29),(3,4),(20,4),(20,6),(25,11),(18,13),(19,1),(27,13),(3,21),(3,5),(3,31),(28,1),(30,1),(18,2),(31,1),(32,1),(33,1),(34,5),(3,14),(55,8),(55,25),(55,23),(55,26),(55,27),(55,24),(55,30),(55,17),(55,3),(55,12),(55,13),(55,6),(55,29),(37,1),(38,2),(42,25),(54,8),(54,25),(54,23),(54,26),(54,27),(54,24),(54,30),(54,17),(54,3),(54,12),(54,13),(54,6),(54,29),(42,23),(56,8),(56,25),(41,3),(55,4),(55,21),(42,26),(42,27),(55,5),(55,31),(43,23),(42,24),(44,1),(45,1),(46,16),(47,16),(48,1),(46,2),(46,15),(46,14),(46,1),(46,5),(46,21),(46,4),(46,6),(46,13),(46,12),(46,3),(46,17),(46,24),(46,27),(46,26),(46,23),(46,25),(46,8),(47,2),(47,15),(47,14),(47,1),(47,5),(47,21),(47,4),(47,6),(47,13),(47,12),(47,3),(47,17),(47,24),(47,27),(47,26),(47,23),(47,25),(47,8),(55,14),(55,28),(56,23),(3,28),(3,15),(54,4),(56,26),(54,21),(54,5),(54,31),(54,14),(54,28),(54,15),(54,2),(54,16),(56,27),(56,24),(56,30),(56,17),(56,3),(56,12),(56,13),(56,6),(56,29),(56,4),(56,21),(56,5),(56,31),(56,14),(56,28),(56,15),(56,2),(56,16),(55,15),(55,2),(55,16),(32,2),(50,27),(50,5),(3,2),(51,17),(51,3),(51,12),(51,13),(51,6),(51,29),(51,4),(51,21),(51,5),(51,1),(51,14),(51,28),(51,15),(51,2),(51,16),(3,16),(53,1),(35,13),(35,31),(35,14),(35,2),(35,17);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
