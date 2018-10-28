
<?php require_once ROOT . "templates/about/_about-text.tpl"; ?>

<div class="content">
	<div class="user-content main-page">
		<div class="hr-line"> </div>

		<div class="container section-page">
			<div class="title-1">Новые <a href="<?=HOST?>portfolio">работы</a></div>
			<div class="row mb-70">

				<?php foreach ($portfolio as $project) { ?>
			
				  <?php include ROOT . "templates/portfolio/_card-project.tpl" ?>

			  	<?php } ?>

			</div>
			<div class="title-1">Новые записи в <a href="<?=HOST?>blog">блоге</a></div>
			<div class="row">

				<?php foreach( $posts as $post) { ?>
			
					<?php include ROOT . "templates/_parts/_card-blog.tpl" ?>

				<?php } ?>

			</div>
		</div>
	</div>
</div>