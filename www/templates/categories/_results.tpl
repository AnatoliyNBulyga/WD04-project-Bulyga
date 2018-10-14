<?php if ( $_GET['result'] == 'catCreated' ) { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Категория успешно добавлена!
	</div>

<?php } ?>

<?php if ( $_GET['result'] == 'catUpdated' ) { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Категория успешно отредактирова!
	</div>

<?php } ?>

<?php if ( $_GET['result'] == 'catDeleted' ) { ?>

	<div class="notify notify--update mb-20" data-notify-hide>
		Категория успешно удалена!
	</div>

<?php } ?>