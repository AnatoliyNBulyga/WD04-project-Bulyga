<?php if ( $_GET['result'] == 'itemCreated' ) { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Товар успешно добавлен!
	</div>

<?php } ?>

<?php if ( $_GET['result'] == 'itemDeleted' ) { ?>

	<div class="notify notify--update mb-20" data-notify-hide>
		Товар был удален!
	</div>

<?php } ?>

<?php if ( $_GET['result'] == 'itemUpdated' ) { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Товар успешно отредактирован!
	</div>

<?php } ?>