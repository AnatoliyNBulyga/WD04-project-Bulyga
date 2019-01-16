<div class="content">
	<div class="container user-content section-page">
		<?php 
			if ( isset($_GET['result']) ) {
				include ROOT . "templates/shop/partials/_results.tpl";
			} 
		?>
		<div class="row justify-content-between align-items-center pl-15 pr-15">

			<div class="title-1">Магазин</div>
			<?php if( isAdmin() ) {  ?>
				<div class="section-ui">
					<a href="<?=HOST?>shop/new" class="button button--edit">Добавить товар</a>
				</div>
			<?php } ?>

		</div>	
		<div class="row">
			<?php foreach ($goods as $item) {  ?>
				<?php include ROOT . "templates/shop/partials/_item-card.tpl" ?>
			<?php } ?>
		</div>
		
	</div>
</div>