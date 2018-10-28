
<?php function showContactItem($name) {
	global $contacts;
	if ( $contacts[$name] != "") { ?>

		<a href="<?php if ( $name == 'email') { echo "mailto:";
				} else if ( $name == 'skype') { echo "skype:<?=$contacts[$name]?>?chat";
				} else if ($name == 'phone') { echo "tel:"; } ?>
				<?=$contacts[$name]?> " target="_blank">

				<?php if ( $name == 'vk') { 
					echo "Профиль Вконтакте"; 
				} else if ( $name == 'facebook') { 
					echo "Профиль Facebook";
				} else if ($name == 'github') {
					echo "Профиль Github";
				} else {
					echo $contacts[$name];
				} ?>
				
		</a>
		
	<?php } ?>	
<?php } ?>

<div class="content">
	<div class="container user-content section-page">

	<?php if ( isAdmin() ) {  ?>
		<div class="row justify-content-end">
			<a class="button button--edit mr-20" href="<?=HOST?>contacts-edit">Редактировать</a>
			<a class="button" href="<?=HOST?>messages">Сообщения</a>
		</div>
	<?php } ?>	

		<div class="row">
			<div class="col-md-5">
				<div class="contacts__title title-1">Контакты</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Имя:</h6>
					</div>
					<div class="col-md-7">
						<div class="contacts__item-email">

							<?=$contacts['name'] ?>
							
						</div>
					</div>
				</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Фамилия:</h6>
					</div>
					<div class="col-md-7">
						<div class="contacts__item-email">

							<?=$contacts['secondname'] ?>
							
						</div>
					</div>
				</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Email</h6>
					</div>
					<div class="col-md-7">
						<div class="contacts__item-email">

							<?php showContactItem('email'); ?>
							
						</div>
					</div>
				</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Skype</h6>
					</div>
					<div class="col-md-7">

						<?php if ( @$contacts['skype'] != "") { ?>
							
							<div class="contacts__item-skype">
								<?php showContactItem('skype'); ?>
							</div>

						<?php	} ?>

					</div>
				</div>
				
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Телефон</h6>
					</div>
					<div class="col-md-7">
							
							<div class="contacts__item-phone">
								<?php showContactItem('phone'); ?>
							</div>

					</div>
				</div>
				<div class="row align-items-start mb-30">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Адрес</h6>
					</div>
					<div class="col-md-7">
							
							<div class="contacts__item-address">
								<?php showContactItem('skype'); ?>		
							</div>

					</div>
				</div>

				<?php if ( @$contacts['vk'] != "" && @$contacts['facebook'] != "" && @$contacts['twitter'] != "" ) : ?>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Социальные сети</h6>
					</div>
					<div class="col-md-7">
						<div class="contacts__item-social">
						
						<?php if (@$contacts['vk'] != "") { ?>

							<?php showContactItem('vk'); ?>

						<?php	} ?>

						<?php if (@$contacts['facebook'] != "") { ?>
						
							
							<?php showContactItem('facebook'); ?>

						<?php	} ?>

						<?php if (@$contacts['github'] != "") { ?>
						
							
							<?php showContactItem('github'); ?>

						<?php	} ?>
						


						</div>
					</div>
				</div>
				<?php endif ?>
			</div>
			<div class="offset-md-1 col-md-4">
				<div class="contacts__title title-1">Связаться со мной</div>

				<?php require ROOT . "templates/_parts/_errors.tpl"; ?>
				<?php require ROOT . "templates/_parts/_success.tpl"; ?>
				
				<form class="form-contacts" action="<?=HOST?>contacts" method="POST" enctype="multipart/form-data">

					<div class="form-group">
						<label class="label">
							<input class="input" name="name" type="text" placeholder="Введите имя" />
						</label>
					</div>
					<div class="form-group">
						<label class="label">
							<input class="input" name="email" type="email" placeholder="Email" />
						</label>
					</div>
					<div class="form-group">
						<label class="label">
							<textarea class="textarea" name="message" placeholder="Cообщение"></textarea>
						</label>
					</div>

					<div class="form-contacts__file-upload">
						<div class="file-upload__title title-6">Прикрепить файл</div>
						<div class="file-upload__comment">div jpg, png, pdf, doc, весом до 4Мб.</div>
							<input class="inputfile" type="file" name="file" id="file" />
							<label class="label-input-file" for="file">Выбрать файл</label>
							<span>Файл не выбран</span>
							<input class="button button--save" type="submit" name="newMessage" value="Отправить" />
					</div>

				</form>

			</div>
		</div>
	</div>
	<div class="map" id="map"></div>
</div>
<?php include_once ROOT . 'templates/_parts/_map.tpl'; ?>