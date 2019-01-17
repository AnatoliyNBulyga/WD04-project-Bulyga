<div class="content">
	<div class="container user-content section-page my-blog">
		<?php 
		if ( isset($_GET['result']) ) {
				include ROOT . "templates/blog/_results.tpl";
		} 
		?>
		<div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">
			<div class="title-1">Блог веб-разработчика</div>

			<?php if ( isAdmin() ) { ?>	
				<a class="button button--edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
			<?php } ?>
		</div>

		<div class="row mb-50">

			<?php foreach( $posts as $post) { ?>
			
				<?php include ROOT . "templates/_parts/_card-blog.tpl" ?>

			<?php } ?>
		</div>
		<div class="row">
			<div class="pagination">
				<a href="#" class="pagination__item pagination__item--active">1</a>
				<a href="#" class="pagination__item">2</a>
				<a href="#" class="pagination__item">3</a>
				<a href="#" class="pagination__item">4</a>
				<a href="#" class="pagination__item">5</a>
			</div>
		</div>
	</div>
</div>