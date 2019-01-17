<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="post">
					<div class="post-row-top">

						<h1><?=$post['title']?></h1>
						<div class="button-right-top ml-10">
							<?php if ( isAdmin() ) { ?>		
								<a class="button button--edit mt-25" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>

								<a class="button button--remove mt-25 ml-10" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>	
							<?php } ?>
						</div>
					</div>
					<div class="post-info">
						<div class="post-info__author"><?=$post['firstname']?> <?=$post['secondname']?></div>
						<div class="post-info__topic"> <a class="post-info__link" href="#"><?=$post['cat_title']?></a></div>
						<div class="post-info__date">

							<?php
								if (isset($post['update_time'] ) ) {
									echo "Обновлено: " .  rus_date("j F Y H:i", strtotime($post['update_time']));	
								} else {
									echo rus_date("j F Y H:i", strtotime($post['date_time']));
								} 
							?>

						</div>
						
						<?php if ( count($comments) > 0 ) { ?>
							<div class="post-info__comments">
								<a class="post-info__link"  href="#comments"><?php commentNumber( count($comments) );?></a>
							</div>
						<?php } ?>

					</div>

					<?php if ( $post['post_img'] != "" ): ?>
						<div class="post-img">
							<img src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
						</div>
					<?php endif ?>

					<div class="post-text">
						<?=$post['text']?>
					</div>
				</div>
				<div class="post-buttons-navigation">
					<?php if ( $prevId != '' ) { ?>
						<a class="button button--icon-left" href="<?=HOST?>blog/post?id=<?=$prevId;?>"><i class="fas fa-arrow-left"></i>Назад</a>	
					<?php } ?> 

					<?php if ( $nextId != '' ) { ?>
						<a class="button button--icon-right button-blog-next" href="<?=HOST?>blog/post?id=<?=$nextId;?>">Вперёд<i class="fas fa-arrow-right"></i></a>
					<?php } ?> 

				</div>

				<!-- Вывод комментариев-->
				<?php include ROOT . "templates/blog/_comment-card.tpl" ?>	

				<!-- Форма для добавления комментариев -->
				<?php include ROOT . "templates/blog/_add-comment-form.tpl" ?>

			</div>
		</div>
	</div>
</div>