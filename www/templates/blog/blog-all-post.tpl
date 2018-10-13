
<div class="content">
	<div class="container user-content section-page my-blog">
		<div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">
			<div class="title-1">Блог веб-разработчика</div><a class="button button--edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
		</div>

		<div class="row mb-50">

			<?php foreach( $posts as $post) { ?>
			
				<?php include ROOT . "templates/_parts/_card-blog.tpl" ?>

			<?php } ?>
		</div>
	</div>
</div>