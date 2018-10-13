<?php 

	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == 'admin' ) {
		
		include ROOT . "templates/_parts/_admin-panel.tpl";

	}

?>
<!-- Секция под шапку на сайт -->
<header class="header">
	<div class="header-admin__container">
		<div class="header-top">

			<?php include ROOT . "templates/_parts/_header-logo.tpl"; ?>

			<?php 
				if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
					// Пользователь на сайте	

					if ( $_SESSION['role'] != 'admin' ) {
						// На сайте пользователь  - не админ
						include ROOT . "templates/_parts/_header-user-profile.tpl"; 
					} 

				} else {
					include ROOT . "templates/_parts/_header-user-login-links.tpl";
				} 
			?>

		</div>
		<?php include ROOT . "templates/_parts/_header-nav.tpl"; ?>
	</div>
</header>