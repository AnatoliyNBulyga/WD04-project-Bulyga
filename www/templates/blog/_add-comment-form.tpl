<?php if ( isLoggedIn() ) { ?>
		
	<form id="comment-form" class="comment-add-block__right" method="POST"
	action="<?=HOST?>blog/post?id=<?=$post['id']?>" >
		<h2> Оставить комментарий</h2>
		<div class="comment-add-block">
			<div class="comment-add-block__left">
				<div class="avatar avatar--small">

					<?php if ( $_SESSION['logged_user']['avatar_small'] != "" ) { ?>
						<img src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" alt="<?=$_SESSION['logged_user']['firstname']?>" />		
					<?php } ?>

				</div>
			</div>
			<div class="comment-add-block__right">
				<h6 class="comment-add-block__right-title">
					<?=$_SESSION['logged_user']['firstname'] ?>
					<?=$_SESSION['logged_user']['secondname'] ?>
				</h6>
				<div class="notify notify--error error-hide">Комментарий не может быть пустым</div><textarea class="textarea textarea--comment-add" data-valid="required" name="commentText" placeholder="Присоединиться к обсуждению..."></textarea>
				<input type="hidden" name="addComment" value="newComment">
				<input type="submit" class="button" value="Опубликовать" >
			</div>
		</div>
	</form>	
	<!-- //Форма для добавления комментариев -->	

<?php	} else { ?>

	<div class="comment-register">
		<p><a href="<?=HOST?>login">Войдите</a> или <a href="<?=HOST?>regi">зарегистрируйтесь</a><br />чтобы оставить комментарий</p>
	</div>

<?php	} ?>