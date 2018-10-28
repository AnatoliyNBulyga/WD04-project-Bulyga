
<div class="content">
	<div class="container user-content section-page">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h1>Редактировать пост</h1>

				<?php require ROOT . "templates/_parts/_errors.tpl"; ?>

				<form action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST" enctype="multipart/form-data">

					<div class="form-group">
						<label class="label">Название
							<input class="input" name="postTitle" type="text" placeholder="Введите название поста" value="<?=$post['title']?>" />
						</label>
					</div>

					<div class="form-group">
						<label class="label">
							<b>Категория</b>
							<select name="postCat">
								<?php foreach ($cats as $cat): ?>

									<option 
											value="<?=$cat['id']?>" 
											<?php echo ( $post['cat'] == $cat['id']) ? "selected" : ""; ?> 
									><?=$cat['cat_title']?></option>
									
								<?php endforeach ?>
							</select>
						</label>
					</div>

					

					<div class="blog-edit__container">
						<b>Изображение</b>
						<p class="mb-10"> Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</p>
					</div>

					<div class="blog-edit__fileUp">
						<input class="inputfile" type="file" name="postImg" id="file" />
						<label class="label-input-file" for="file">Изображение</label>
						<span>Файл не выбран</span>
					</div>

					<?php if ( $post['post_img_small'] != "" ): ?>
					<div class="formInput-image formInput-image--img">
						<input type="checkbox" id="deleteImg" class="deleteImg" name="deleteImg" value="yes">
						<span class="delete-description hidden">Изображение будет удалено</span>
						<img  src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" alt="<?=$post['title']?>" />

						<div class="formInput-image__delete-button">
							<label class="button button--small button--remove" id="button--remove" for="deleteImg">Удалить</label>
						</div>
					</div>
					
					<?php endif ?>

					<div class="form-group">
						<label class="label label--ckEditor">Содержание поста
							<textarea id="ckEditor" class="textarea" name="postText" type="type" placeholder="Введите содеражание поста"><?=$post['text']?></textarea>
							
							<?php include_once ROOT . 'templates/_parts/_ckEditorConnect.tpl'; ?>
						</label>
					</div>

					<input type="submit" name="postUpdate" class="button button--save mr-20" value="Сохранить">

					<a class="button" href="<?=HOST?>blog">Отмена</a>
				</form>
			</div>
		</div>
	</div>
</div>
