<?php if ( count($comments) > 0 ) { ?>

	<h2 id="comments"><?php commentNumber( count($comments) );?></h2>

	<?php foreach ($comments as $comment): ?>
		<div class="comments-item">
			<div class="avatar-block">

				<?php if ( $comment['avatar_small'] != "" ) { ?>
					<div class="avatar avatar--small"><img src="<?=HOST?>usercontent/avatar/<?=$comment['avatar_small']?>" alt="<?=$comment['firstname']?> <?=$comment['secondname']?>" />
					</div>		
				<?php } ?>

			</div>
			<div class="comment-item__content">
				<div class="comment-item__top">
					<div class="user-name"> <?=$comment['firstname']?> <?=$comment['secondname']?></div>
					<div class="comment-item__date"><span><i class="far fa-clock"></i></span><span> <?=$comment['date_time']?></span></div>
				</div>
				<div class="comment-item__text">
				<?=$comment['text']?> 
				</div>
			</div>
		</div>
	<?php endforeach ?>

<?php } ?>