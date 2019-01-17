<div class="container">
	<div class="title-1 mb-20 pt-60">Создать товар</div>

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>

	<form action="<?=HOST?>shop/new" method="POST" enctype="multipart/form-data" class="form mb-100 pb-20 pt-0">
		<div class="form-group">
			<label class="label">Название
				<input type="text" class="input" placeholder="Введите название" name="title">
			</label>
		</div>
		<div class="row">
			<div class="col">
				<div class="form-group">
					<label class="label">Цена
						<input type="text" class="input" placeholder="Введите цену" name="price">
					</label>
				</div>
			</div>
			<div class="col">
				<div class="form-group">
					<label class="label">Старая цена
						<input type="text" class="input" placeholder="Введите старую цену" name="priceOld">
					</label>
				</div>
			</div>
		</div>

		<div class="blog-edit__container">
			<b>Изображение</b>
			<p class="mb-10"> Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 4Мб.</p>
		</div>
		<div class="blog-edit__fileUp">
			<input class="inputfile" type="file" name="itemImg" id="file" />

			<label class="label-input-file" for="file">Выбрать файл</label>
			<span>Файл не выбран</span>
		</div>

		<div class="form-group">
			<label class="label">Описание товара
				<textarea id="ckEditor" class="textarea" rows="7" name="itemDesc" type="type" placeholder="Введите описание товара"></textarea>
				<?php include_once ROOT . 'templates/_parts/_ckEditorConnect.tpl'; ?>
			</label>
		</div>

		<input type="submit" name="itemNew" class="button button--save mr-20" value="Сохранить">
		<a class="button" href="<?=HOST?>shop">Отмена</a>
	
	</form>
</div>