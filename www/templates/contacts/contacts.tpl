<div class="content">
	<div class="container user-content section-page">
		<div class="row justify-content-end"><a class="button button--edit mr-20" href="<?=HOST?>contacts-edit">Редактировать</a><a class="button" href="<?=HOST?>messages">Сообщения</a></div>
		<div class="row">
			<div class="col-md-5">
				<div class="contacts__title title-1">Контакты</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Email</h6>
					</div>
					<div class="col-md-7">
						<?php if ( @$contacts['skype'] != "") { ?>
							
							

						<?php	} ?>
						<div class="contacts__item-email">
							<a href="<?=$contcts['email']?>">
								<?=$contacts['email']?>
							</a>
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
								<a href="<?=$contacts['skype']?>"><?=$contacts['skype']?></a>
							</div>

						<?php	} ?>

					</div>
				</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Социальные сети</h6>
					</div>
					<div class="col-md-7">
						<div class="contacts__item-social">
						
						<?php if ( @$contacts['fb'] != "") { ?>

							<a href="<?=$contacts['vk']?>">VK</a>

						<?php	} ?>

						
						<?php if ( @$contacts['fb'] != "") { ?>
							
							<a href="<?=$contacts['facebook']?>">Facebook</a>

						<?php	} ?>


						</div>
					</div>
				</div>
				<div class="row align-items-start mb-15">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Телефон</h6>
					</div>
					<div class="col-md-7">

						<?php if ( @$contacts['fb'] != "") { ?>
							
							<div class="contacts__item-phone"><?=$contacts['phone']?></div>

						<?php	} ?>

					</div>
				</div>
				<div class="row align-items-start">
					<div class="col-md-5">
						<h6 class="contacts__item-name">Адрес</h6>
					</div>
					<div class="col-md-7">

						<?php if ( @$contacts['fb'] != "") { ?>
							
							<div class="contacts__item-address"><?=$contacts['adress']?></div>
							
						<?php	} ?>

					</div>
				</div>
			</div>
			<div class="offset-md-1 col-md-4">
				<div class="contacts__title title-1">Связаться со мной</div>
				
				<form class="form-contacts" action="">
					<div class="form-group"><label class="label"><input class="input" name="firstname" type="text" placeholder="Введите имя" /></label></div>
					<div class="form-group"><label class="label"><input class="input" name="firstname" type="text" placeholder="Email" /></label></div>
					<div class="form-group"><label class="label"><textarea class="textarea" name="message" type="type" placeholder="Cообщение"></textarea></label></div>
					<div class="form-contacts__file-upload">
						<div class="file-upload__title title-6">Прикрепить файл</div>
						<div class="file-upload__comment">div jpg, png, pdf, doc, весом до 2Мб.</div><input class="inputfile" type="file" name="file" id="file" /><label class="label-input-file" for="file">Выбрать файл</label><span>Файл не выбран</span><input class="button button--save" type="submit" value="Отправить" />
					</div>
				</form>

			</div>
		</div>
	</div>
	<div class="map" id="map"></div>
</div>