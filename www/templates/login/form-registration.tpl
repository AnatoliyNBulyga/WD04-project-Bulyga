<form action="<?=HOST?>registration" method="POST" id="login-form" class="login-form" novalidate>

	<h1 class="text-center login-form__header">Регистрация</h1>

	<?php require ROOT . "templates/_parts/_errors.tpl"; ?>

	<div class="notify notify--error notify--enter-email mb-20 error-hide">Введите email</div>
	<div class="notify notify--error mb-20 notify--invalid-email error-hide">Неверный формат email</div>
	<div class="notify notify--error mb-20 notify--enter-password error-hide">Введите пароль</div>
	<div class="notify no-paddings error-hide notify--invalid-password-email">
		<div class="notify no-radius-bottom notify--error ">Неверный email или пароль</div>
		<div class="notify no-radius-top">
			<p>Введите верные данные для входа или воспользуйтесь<a href="#!">восстановлением пароля </a>, чтобы войти на сайт.</p>
		</div>
	</div>
	<input class="input-form-registration" name="email" type="email" placeholder="Email" value="info@admin.com" />
	<input class="input-form-registration" name="password" type="password" placeholder="Пароль"/>
	<div class="text-center pt-30">
		<input type="hidden" name="register" value="register">
		<input type="submit"  class="button button--enter" value="Регистрация">
	</div>
</form>