<?php if ( isset($_COOKIE['cart']) ) { ?>
<?php 

	$cartFromCookie = $_COOKIE['cart']; // json string
	$cartArray = json_decode($cartFromCookie, true);
	$itemsInCart = array_sum($cartArray);
	// $itemsInCart = array_sum( json_decode($_COOKIE['cart'], true) );

?>
	<?php if ( $itemsInCart): ?>
		<div class="cart">
			<a href="<?=HOST?>cart">
				<i class="fas fa-shopping-cart"></i>
				<?=$itemsInCart?> товаров
			</a>	
		</div>
	
	<?php endif ?>


<?php } ?>