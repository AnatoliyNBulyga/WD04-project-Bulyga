<?php if ( $_GET['result'] == 'postDeleted' ) { ?>

	<div class="notify notify--update mb-20" data-notify-hide>
		Пост успешно удален!
	</div>

<?php } ?>

<?php if ( $_GET['result'] == 'postCreated' ) { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Пост успешно добавлен!
	</div>

<?php } ?>

<?php if ( $_GET['result'] == 'postUpdated' ) { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Пост успешно отредактирован!
	</div>

<?php } ?>