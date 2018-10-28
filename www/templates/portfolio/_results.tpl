<?php if ($_GET['result'] == 'projectDeleted') { ?>

	<div class="notify notify--update mb-20" data-notify-hide>
		Работа успешно удалена!
	</div>

<?php 
} ?>

<?php if ($_GET['result'] == 'projectCreated') { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Работа успешно добавлена!
	</div>

<?php 
} ?>

<?php if ($_GET['result'] == 'projectUpdated') { ?>

	<div class="notify notify--success mb-20" data-notify-hide>
		Работа успешно отредактирована!
	</div>

<?php 
} ?>