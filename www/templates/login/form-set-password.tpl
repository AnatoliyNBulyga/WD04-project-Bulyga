<form action="<?=HOST?>set-password" method="POST" id="login-form" class="login-form" novalidate>

	<?php if ( $newPasswordReady == false ): ?>
		<h1 class="text-center login-form__header">Введите новый пароль</h1>		
	<?php endif ?> ?>

	<?php require ROOT . "templates/_parts/_errors.tpl"; ?>
	<?php require ROOT . "templates/_parts/_success.tpl"; ?>

	<div class="notify notify--error notify--enter-email mb-20 error-hide">Введите email</div>
	<div class="notify notify--error mb-20 notify--invalid-email error-hide">Неверный формат email</div>
	<div class="notify notify--error mb-20 notify--enter-password error-hide">Введите пароль</div>
	<div class="notify no-paddings error-hide notify--invalid-password-email">
		<div class="notify no-radius-bottom notify--error ">Неверный email или пароль</div>
		<div class="notify no-radius-top">
			<p>Введите верные данные для входа или воспользуйтесь<a href="#!">восстановлением пароля </a>, чтобы войти на сайт.</p>
		</div>
	</div>

	<?php if ( $newPasswordReady == false ): ?>
		<input class="input-form-registration" name="resetpassword" type="password" placeholder="Новый пароль" />
	<?php endif ?>

	<div class="login-form-links text-center"><a href="<?=HOST?>login">Перейти на страницу входа</a></div>
	<div class="text-center pt-30">
		<?php if ( $newPasswordReady == false ): ?>
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
			<input type="hidden" name="set-password" value="set-password">
			<input type="submit" class="button button--enter pl-50 pr-50" value="Установить пароль">
		<?php endif ?> ?>
		
	</div>
</form>	
