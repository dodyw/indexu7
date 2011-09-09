<?php if (count($lep->tpl["comments"])) : ?>

  <ul>

  <?php foreach ($lep->tpl["comments"] as $k => $v) { ?>

    <li>
      <!-- subject -->
      <div><?php print $v['subject'] ?></div>
      
      <!-- rating -->
      <div>
        <?php 
          if ($v['rating']==1) {
            print "Poor";
          }  
          if ($v['rating']==2) {
            print "Not special";
          }   
          if ($v['rating']==3) {
            print "Good";
          }   
          if ($v['rating']==4) {
            print "Very Good";
          }   
          if ($v['rating']==5) {
            print "Excellent!";
          }      
        ?>
      </div>

      <!-- date and reviewed by-->
      <div>
        Reviewed by <?php print user_get_username($v['user_id']) ?> 
        on <?php print date('M d, Y',$v['created_at']) ?>
      </div>

      <!-- comment -->
      <div>
        <?php print $v['comment'] ?>
      </div>
  
    </li>
              
  <?php } ?>
  </ul>
<?php endif; ?>