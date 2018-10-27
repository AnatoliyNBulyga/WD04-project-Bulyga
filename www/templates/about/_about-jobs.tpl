<div class="container user-content section-page about-me__jobs-list-wrapper">
	<div class="row">
		<div class="col-md-9 offset-md-3">
			<div class="about-me__jobs-container justify-content-between mb-30">
				<div class="title-1 about-me__jobs-container-item">Опыт работы</div>

				<?php if (isAdmin()) { ?>
					<div class="button-edit__about-me-item">
						<a class="button button--edit" href="<?=HOST?>edit-jobs">
							Редактировать
						</a>
					</div>
				<?php } ?>
				
			</div>
			
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">

			<ul class="about-me__definition-list">

				<?php foreach ($jobs as $job) {

					include ROOT . "templates/about/_job-card.tpl";
					
				} ?>

			</ul>
		</div>
	</div>
</div>