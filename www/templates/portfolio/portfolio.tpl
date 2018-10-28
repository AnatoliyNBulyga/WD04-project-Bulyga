<div class="content">
   <div class="container user-content section-page team-portfolio">
     <?php 
        if (isset($_GET['result'])) {
            include ROOT . "templates/portfolio/_results.tpl";
      } ?>

      <div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">

        <div class="title-1"> Работы <span>которые сделал я и моя команда</span></div>

        <?php if (isAdmin()) { ?>

          <a class="button button--edit" href="<?=HOST?>portfolio/project-new">Добавить работу</a>
               
				<?php } ?>
         
      </div>

      <div class="row mb-50">


         <?php foreach ($portfolio as $project) { ?>
			
				  <?php include ROOT . "templates/portfolio/_card-project.tpl" ?>

			  <?php } ?>

      </div>

   </div>
</div>
   