<!-- To start, use the same code as rows.php, then make some changes to expose featured listing -->

<?php if (count($lep->tpl["resources"])) : ?>

  <ul>

  <?php foreach ($lep->tpl["resources"] as $k => $v) { ?>

    <li>
      
      <!-- title and link to detail page -->
      <div>
        <strong><a href="<?php print seo_detail_url2($v['res_id'], $v['title']) ?>"><b><?php print $v['title'] ?></b></a></strong>
      </div>
      
      <!-- description, if exist -->
      <div>
        <?php if ($v['description']) : ?>
          <p><?php print $v['description'] ?></p>
        <?php endif; ?>      
      </div>  

      <!-- url -->
      <div>
        <?php print $v['url'] ?>
      </div>
    </li>
    
  <?php } ?>

  </ul>

<?php endif; ?>