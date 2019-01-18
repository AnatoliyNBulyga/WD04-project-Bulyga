<div class="container mt-70 mb-120 justify-content-center">
	<div class="blog-full-post">

		<?php if ( isAdmin() ) { ?>
			<div class="row">
				<div class="ml-auto mb-30">
					<a href="<?=HOST?>shop/item-edit?id=<?=$item['id']?>" class="button button--edit">Редактировать</a>
					<a href="<?=HOST?>shop/item-delete?id=<?=$item['id']?>" class="button button--remove button--del ml-10">Удалить</a>
				</div>
			</div>
		<?php } ?>

		<div class="row">

			<?php if ( $item['item_img'] != "" ) {  ?>
				<div class="col-6">
					<div class="blog__image mb-100 text-center">
						<img src="<?=HOST?>usercontent/shop/<?=$item['item_img']?>" alt="<?=$item['title']?>">
					</div>
				</div>
			<?php } else { ?>
				<div class="col-6">
					<div class="blog__image mb-100 text-center">
						<img class="blog__image mb-100 text-center" src="<?=HOST?>usercontent/blog-no-image.jpg" alt="<?=$item->title?>">	
					</div>		
				</div>
			<?php } ?>

			<!-- Item desc -->
			<div class="col-6">
				<h1 class="blog__heading"><?=$item['title']?></h1>

				<div class="price-holder">
					<?php if ( $item['price_old'] ): ?>
						<div class="price-old">
							<?=price_format($item['price_old'])?>
						</div>
					<?php endif ?>	
					<div class="price">
						<?=price_format($item['price'])?> <span>рублей</span>
					</div>
				</div>

				<form action="<?=HOST.'addtocart'?>" method="POST" id="addToCart">
					<input type="hidden" name="itemId" id="itemId" value="<?=$item['id']?>">
					<input type="submit" class="button mb-15" name="addToCart" value="В корзину">
				</form>

				<div class="user-content">
					<?=$item['desc']?>
				</div>
				
			</div>
			<!-- // Item desc -->
			
		</div>
		<!-- //row -->
		
	</div>
	

</div>