<div class="container">
	<div class="title-1 m-0 pt-60">Создать товар</div>
	<form action="<?=HOST?>shop/new" method="POST" enctype="multipart/form-data" class="form mb-100 pb-20 pt-35">
		<div class="fieldset">
			<label>
				<span class="fieldset_title">Название</span>
				<input type="text" class="input" placeholder="Введите название" name="title">
			</label>
		</div>
		<div class="row">
			<div class="col">
				<div class="fieldset">
					<label>
						<span class="fieldset_title">Цена</span>
						<input type="text" class="input" placeholder="Введите цену" name="price">
					</label>
				</div>
			</div>
			<div class="col">
				<div class="fieldset">
					<label>
						<span class="fieldset_title">Старая цена</span>
						<input type="text" class="input" placeholder="Введите старую цену" name="priceOld">
					</label>
				</div>
			</div>
		</div>
		
	</form>
</div>