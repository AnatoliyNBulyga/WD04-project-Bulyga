<div class="container">
	<div class="title-1 mb-20 pt-60">Удалить товар</div>

	<?php require ROOT . "templates/_parts/_errors.tpl" ?>

	<form action="<?=HOST?>shop/item-delete?id=<?=$item['id']?>" method="POST" enctype="multipart/form-data" class="form mb-100 pb-20 pt-0">

		<div class="form-group">
			<p>Вы действительно хотите товар
					<strong>
						<?=$item['title']?>
					</strong> с id =
					<?=$item['id']?> ?</p>
		</div>

		<div class="row">
			<div class="col-md-auto pr-10">
				<input type="submit" name="itemDelete" class="button button--del button--remove ml-10" value="Удалить">
			</div>
			<div class="col-md-auto pl-10">
				<a class="button" href="<?=HOST?>shop">Отмена</a>
			</div>
		</div>
	
	</form>
</div>