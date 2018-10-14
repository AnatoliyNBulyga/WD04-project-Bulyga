<div class="content">
	<div class="container user-content section-page">

		<div class="row">
			<div class="col-md-10 offset-md-1">

				<?php 
				if ( isset($_GET['result']) ) {
						include ROOT . "templates/categories/_results.tpl";
				} 
				?>

				<div class="row justify-content-between align-items-center pl-15 pr-15 mb-35">
					<h1>Категории блога</h1>
					<a class="button button--edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-10 offset-md-1">
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">id</th>
							<th scope="col">Название</th>
							<th scope="col">Редактировать</th>
							<th scope="col">Удалить</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($cats as $cat) : ?>	
						<tr>
							<th><?=$cat['id']?></th>
							<td><?=$cat['cat_title']?></td>
							<td><a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a></td>
							<td><a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a></td>
						</tr>
						<?php endforeach ?>
					</tbody>
				</table>
			</div>
		</div>
		

	</div>
</div>