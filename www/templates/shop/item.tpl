<div class="container mt-70 mb-120 justify-content-center">
	<div class="blog-full-post">

		<?php if ( isAdmin() ) { ?>
			<div class="row">
				<div class="blog-full-post__button-edit postition-static">
					<a href="<?=HOST?>shop/item-edit?id=<?=$item['id']?>" class="button button--edit">Редактировать</a>
					<a href="<?=HOST?>shop/item-delete?id=<?=$item['id']?>" class="button button--del">Удалить</a>
				</div>
			</div>
		<?php } ?>

		<div class="row">

			<?php if ( $item['item_img'] != "" ) {  ?>
				<div class="col">
					<div class="blog__image">
						<img src="<?=HOST?>usercontent/shop/<?=$item['item_img']?>" alt="<?=$item['title']?>">
					</div>
				</div>
			<?php } ?>

			<!-- Item desc -->
			<div class="col pt-40">
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

				<a href="#!" class="button mb-15" id="addToCart">В корзину</a>

				<div class="user-content">
					<?=$item['desc']?>
				</div>

				<!-- <form action="<?=HOST.'addtocart'?>" method="POST" id="addToCart">
					<input type="hidden" name="itemId" id="itemId" value="<?=$item['id']?>">
					<input type="submit" class="button mb-15" name="addToCart" value="В корзину">
				</form> -->
				
			</div>
			<!-- // Item desc -->
			
		</div>
		<!-- //row -->
		
	</div>
	

</div>