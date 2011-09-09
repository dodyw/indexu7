<?php if (count($lep->tpl["resources"])) : ?>
  <?php foreach ($lep->tpl["resources"] as $k => $v) { ?>

  <!-- prepare for tag list -->
  <?php 
    $a = explode(',', $v['tag']);
    
    foreach ($a as $k2 => $v2) {      
      $colors = "0123456789ABCDE";
      $tag_color = "#";
      
      for ($ii = 1; $ii <= 6; $ii++) {
        $tag_color .= $colors[rand(0, 14)];
      }
        
      $v2 = trim($v2);
      $v2_url = str_replace(' ','+',$v2);
      $v['tag_url'] .= "<li style=\"margin-right:10px;display:inline;\"><a style=\"color:{$tag_color}\" href=\"".URL."tag/{$v2_url}\">$v2</a></li>"; 
    }     
    
    $v['tag_url'] = "<ul>{$v['tag_url']}</ul>";    
  ?>

  
  <!-- data sheet in table -->
  <table>
    <col></col>
    <col></col>
    <tbody>
      <tr>
        <td>Link ID</td>
        <td><?php print $v['res_id'] ?> &nbsp; (<a href="usercp/claim.php?act=claim&id=<?php print $v['res_id'] ?>">claim this listing</a>)</td>
      </tr>
      <tr>
        <td>Title</td>
        <td><?php print $v['title'] ?></td>
      </tr>
      <?php if ($v['description']) : ?>
        <tr>
        <td>Url</td>
        <td><a href="<?php print $v['url'] ?>" name="link_<?php print $v['res_id'] ?>"><?php print $v['url'] ?></a></td>
      </tr>
      <?php endif; ?>
      <?php if ($v['description']) : ?>
      <tr>
        <td valign="top">Description</td>
        <td><?php print $v['description'] ?></td>
      </tr>
      <?php endif; ?>
      <tr>
        <td valign="top">Category</td>
        <td><?php print cat_get_category_path_url($v['category_id']); ?></td>
      </tr>
      <tr>
        <td valign="top">Keywords</td>
        <td><?php print $v['tag_url'] ?></td>
      </tr>
      <tr>
        <td>Date Added</td>
        <td><?php print date("F d, Y",$v['created_at']) ?></td>
      </tr>
      <tr>
        <td>Contact Name</td>
        <td><?php print $v['owner_name'] ?></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><?php print $v['email'] ?></td>
      </tr>
      <tr>
        <td>Address</td>
        <td><?php print $v['address'] ?><br />
            <?php print $v['city'] ?><?php if ($v['state']) print ', '.$v['state'] ?><?php if ($v['zip']) print ', '.$v['zip'] ?><?php print ', '.$v['country'] ?></td>
      </tr>
      <tr>
        <td>Phone</td>
        <td><?php print $v['phone'] ?></td>
      </tr>
      <tr>
        <td>Fax</td>
        <td><?php print $v['fax'] ?></td>
      </tr>
      <tr>
        <td>Zip</td>
        <td><?php print $v['zip'] ?></td>
      </tr>

      <tr>
        <td>
          <!-- thumshots.org -->
          <img src="http://open.thumbshots.org/image.aspx?url=<?php print $v['url'] ?>" alt="<?php print $v['title'] ?>" style="border:1px solid #777;float:left;">
        </td>
        <td>
          <div>
            <!-- google one plus -->
            <g:plusone size="medium"></g:plusone>
          </div>
          
          <!-- fb like -->
          <?php if ($lep->config['facebook_enable']) { ?>
            <div style="margin-top:10px"><fb:like layout="button_count" show_faces="true" width="450"></fb:like></div>
          <?php } ?>
          
          <!-- digg button -->
          <div style="margin-top:10px">
            <!-- dig -->
            <script type="text/javascript">
              (function() {
              var s = document.createElement('SCRIPT'), s1 = document.getElementsByTagName('SCRIPT')[0];
              s.type = 'text/javascript';
              s.async = true;
              s.src = 'http://widgets.digg.com/buttons.js';
              s1.parentNode.insertBefore(s, s1);
              })();
            </script>
            <!-- Compact Button -->
            <a class="DiggThisButton DiggCompact"></a>
          </div>
          
          <!-- reddit button -->
          <div style="margin-top:10px">
            <script type="text/javascript" src="http://www.reddit.com/static/button/button1.js"></script>                
          </div>
          
        </td>
      </tr>
  </table>


  <!-- google map, do not change the DIV ID -->
  <?php if ($lep->config['enable_google_map']) { ?>
  <div id="map_canvas" style="border:5px solid #aaa;width: 670px;  height: 300px; margin: 20px 0;"></div>
  <?php } ?>
  
  
  <!-- tabbed content : images, videos, articles, promos, events, products, documents, news -->
  <?php $detail_url = seo_detail_url2($v['res_id'], $v['title']) ?>
  <div id="usual1" class="usual"> 
    <?php
      $query = "select * from lep_image where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $images = $rs->GetRows();  
      
      $query = "select * from lep_video where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $videos = $rs->GetRows();  
      
      $query = "select * from lep_promo where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $promos = $rs->GetRows();
      
      $query = "select * from lep_event where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $events = $rs->GetRows();
      
      $query = "select * from lep_product where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $products = $rs->GetRows();
      
      $query = "select * from lep_document where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $documents = $rs->GetRows();

      $query = "select * from lep_news where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $news = $rs->GetRows();
      
      $query = "select * from lep_article where status = '1' and res_id = '{$v['res_id']}'";
      $rs = $lep->db->Execute($query);
      $articles = $rs->GetRows();
    ?>
    <ul> 
      <li><a class="selected" href="<?php print $detail_url ?>#tab1"><?php print _t("Images")." (".count($images).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab2"><?php print _t("Videos")." (".count($videos).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab3"><?php print _t("Promos")." (".count($promos).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab4"><?php print _t("Events")." (".count($events).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab5"><?php print _t("Products")." (".count($products).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab6"><?php print _t("Documents")." (".count($documents).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab7"><?php print _t("News")." (".count($news).")" ?></a></li> 
      <li><a href="<?php print $detail_url ?>#tab8"><?php print _t("Articles")." (".count($articles).")" ?></a></li> 
    </ul>
    
    <!-- images --> 
    <div id="tab1" class="tabbed">
      <?php
        if (count($images)) {
          foreach($images as $k2 => $v2) {
          ?>
          <a href="<?php print URL.'upload/'.$v2['filename'] ?>"
             rel="prettyPhoto"><img src="<?php print 'lib/timthumb/timthumb.php?h=90&src='.

                      'upload/'.$v2['filename'] ?>"
                 alt="<?php print $v2['title'] ?>"
                 name="<?php print $v2['title'] ?>" /></a>
          <?php
          }
        ?>
          <div style="margin-top:10px"><a href="<?php print URL.'usercp/image.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to upload a new image.</div>
        <?php
        }
        else {
        ?>
          <div>There is no image for this listing. <a href="<?php print URL.'usercp/image.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to upload a new image.</div>
        <?php
        }
      ?>
    </div> 

    <!-- videos --> 
    <div id="tab2" class="tabbed">
      <?php
        if (count($videos)) {
          foreach($videos as $k2 => $v2) {
          ?>
          <a href="<?php print 'http://www.youtube.com/watch?v='.$v2['youtube_id'] ?>"
             rel="prettyPhoto"><img src="http://i1.ytimg.com/vi/<?php print $v2['youtube_id'] ?>/default.jpg" /></a>
          <?php
          }
        ?>
          <div style="margin-top:10px"><a href="<?php print URL.'usercp/video.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new video.</div>
        <?php
        }
        else {
        ?>
          <div>There is no video for this listing. <a href="<?php print URL.'usercp/video.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new video.</div>
        <?php
        }
      ?>
    </div> 

    <!-- promos --> 
    <div id="tab3" class="tabbed">
      <?php
        if (count($promos)) {

          foreach($promos as $k2 => $v2) {
          ?>
            <?php print nl2br($v2['promo']) ?>
          <?php
          }

          ?>
          <div style="margin-top:10px"><a href="<?php print URL.'usercp/promo.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new promo.</a></div>
          <?php
        }
        else {
        ?>
          <div>There is no promo for this listing. <a href="<?php print URL.'usercp/promo.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new promo.</div>
        <?php
        }
      ?>
    </div> 

    <!-- events --> 
    <div id="tab4" class="tabbed">
      <?php
        if (count($events)) {

         foreach($events as $k2 => $v2) {
          ?>
            <b><span style="text-decoration:underline;"><?php print $v2['title'] ?></span></b> -
            <?php print $v2['event'] ?>
            <br /><strong>Date:</strong> <?php print etc_ts2date($v2['date']) ?>
          <?php
          }
          ?>
          <div style="margin-top:10px"><a href="<?php print URL.'usercp/event.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new event.</div>
          <?php          }
        else {
        ?>
          <div>There is no event for this listing. </div>
        <?php
        }
      ?>
    </div> 

    <!-- products --> 
    <div id="tab5" class="tabbed">
      <?php
        if (count($products)) {

          foreach($products as $k2 => $v2) {
          ?>
          <div style='margin-bottom:10px;'>
            <div style="float:left;">
              <?php if ($v2['image']) : ?>
              <a rel="prettyPhoto" href="<?php print 'upload/'.$v2['image'] ?>"><img
                   src="<?php print URL.'lib/timthumb/timthumb.php?w=90&src='.
                        'upload/'.$v2['image'] ?>"
                   alt="<?php print $v2['title'] ?>"
                   name="<?php print $v2['title'] ?>" /></a>
              <?php else : ?>
              <img src="<?php print TPL_URL ?>/images/no_prod_image.jpg"
                   alt="<?php print $v2['title'] ?>"
                   name="<?php print $v2['title'] ?>" />
              <?php endif; ?>
            </div>
            <div style="float:left; margin-left:10px;width: 560px;">
              <div><b><?php print $v2['title'] ?></b></div>
              <?php if ($v2['description']) : ?><div style="margin-top:7px;"><?php print $v2['description'] ?></div><?php endif; ?>
              <?php if ($v2['price']) : ?><div style="margin-top:10px;"><?php print _t('Price') ?>: <?php print $v2['price'] ?></div><?php endif; ?>
            </div>
            <div style="clear:both;"></div>
          </div>
          <?php
          }

        ?>
          <div style="margin-top:10px"><a href="<?php print URL.'usercp/product.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new product.</div>
        <?php
        }
        else {
        ?>
          <div>There is no product for this listing. <a href="<?php print URL.'usercp/product.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new product.</div>
        <?php
        }
      ?>
    </div> 

    <!-- documents --> 
    <div id="tab6" class="tabbed">
      <?php
        if (count($documents)) {

          foreach($documents as $k2 => $v2) {
          ?>
          <p>
            <a href="<?php print 'upload/'.$v2['filename'] ?>"><?php print $v2['title'] ?></a>
          </p>
          <?php
          }
          ?>
          <div><a href="<?php print URL.'usercp/document.php?act=add&res_id='.$v['res_id'] ?>"><?php print _t('Post a new document!') ?></a></div>
          <?php
        }
        else {
        ?>
          <div>There is no document for this listing. <a href="<?php print URL.'usercp/document.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to upload a new document.</div>
        <?php
        }
      ?>
    </div> 

    <!-- news --> 
    <div id="tab7" class="tabbed">
      <?php
        if (count($news)) {

          foreach($news as $k2 => $v2) {
          ?>
            <p><b><?php print $v2['title'] ?></b> -
            <?php print $v2['news'] ?></p>
          <?php
          }

          ?>
          <div><a href="<?php print URL.'usercp/news.php?act=add&res_id='.$v['res_id'] ?>"><?php print _t('Post a new news!') ?></a></div>
          <?php            }
        else {
        ?>
          <div>There is no news for this listing. <a href="<?php print URL.'usercp/news.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new news.</div>
        <?php
        }
      ?>
    </div> 

    <!-- articles --> 
    <div id="tab8" class="tabbed">
      <?php
        if (count($articles)) {

          foreach($articles as $k2 => $v2) {
          ?>
            <h4 style="font-size:13px;margin:20px 0;"><?php print $v2['title'] ?></h4>
            <?php print $v2['content'] ?>
          <?php
          }

          ?>
          <div><a href="<?php print URL.'usercp/article.php?act=add&res_id='.$v['res_id'] ?>"><?php print _t('Post a new article!') ?></a></div>
          <?php            }
        else {
        ?>
          <div>There is no article for this listing. <a href="<?php print URL.'usercp/article.php?act=add&res_id='.$v['res_id'] ?>">Click here</a> to add a new article.</div>
        <?php
        }
      ?>
    </div> 
  </div> 
  
  <script type="text/javascript" src="<?php print URL."lib/js/jquery.idTabs.min.js" ?>"></script> 
  <script type="text/javascript"> 
    $("#usual1 ul").idTabs(); 
  </script>
  
  <!-- load prettyphoto js -->
  <script type="text/javascript" src="<?php print URL."lib/js/prettyPhoto/js/jquery.prettyPhoto.js" ?>"></script> 
  <link rel="stylesheet" href="<?php print URL."lib/js/prettyPhoto/css/prettyPhoto.css" ?>" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
  <script type="text/javascript" charset="utf-8">
    $(document).ready(function(){
      $("a[rel^='prettyPhoto']").prettyPhoto();
    });
  </script>
  
  
  <?php } ?>
<?php else : ?>
  <?php print _t('Sorry you hit wrong page.') ?>
<?php endif; ?>