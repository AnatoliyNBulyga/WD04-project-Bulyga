<div class="col-4">
	<div class="card card-post card-item mb-50">

		<div class="text-center">
			<?php if ( $item->itemImgSmall !="" ) {  ?>
				<img class="card-post__img mb-20" src="<?=HOST?>usercontent/shop/<?=$item->itemImgSmall?>" alt="<?=$item->title?>">
			<?php } else { ?>	
				<img class="card-post__img mb-20" src="<?=HOST?>usercontent/blog-no-image.jpg" alt="<?=$item->title?>">
			<?php } ?>	
		</div>

		<div class="title-4">
			<?=mbCutString($item->title, 42)?>
		</div>
		<div class="card-price-holder justify-content-between">
			<div class="card__price mb-20">
				<?=price_format($item['price'])?> <span>рублей</span>
			</div>
			<a class="button" href="<?=HOST?>shop/item?id=<?=$item->id?>">Смотреть</a>
		</div>
	</div>
</div>