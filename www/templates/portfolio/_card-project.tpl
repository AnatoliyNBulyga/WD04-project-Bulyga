<div class="col-md-4">
   <div class="card card--portfolio mb-40">

      <div class="card__img">

      <?php if ($project->portfolio_img_small != "") : ?>
				<img src="<?= HOST ?>usercontent/portfolio/<?= $project->portfolio_img_small ?>" alt="<?= $project->title ?>" />
			<?php else : ?>
				<img src="<?= HOST ?>usercontent/blog-no-image.jpg" alt="<?= $project->title ?>" />
			<?php endif ?>
      </div>

      <div class="card__desc pl-20 pr-20">
         <div class="card__title"><?= mbCutString($project->title, 38) ?></div><a class="button" href="<?= HOST ?>portfolio/project?id=<?= $project->id ?> ">Смотреть кейс</a>
      </div>
   </div>
</div>