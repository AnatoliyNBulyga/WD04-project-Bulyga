<div class="content">
	<div class="container user-content section-page">
		<div class="row">
				
			<form class="col-md-10 offset-md-1" method="POST" action="<?= HOST ?>delete-jobs?id=<?= $jobs['id'] ?>" >

			    <h1>Удалить данные о месте работы</h1>

                <ul class="about-me__definition-list">

                    <li class="user-message mb-20">
                        <div class="user-message__top">
                            <div class="user-message__date">
                                <?= $jobs['period'] ?>
                            </div>
                        </div>
                        <div class="user-message__header">
                            <div class="user-message__name">
                                <?= $jobs['title'] ?>
                            </div>
                        </div>
                        <div class="user-message__text">
                            <p><?= $jobs['description'] ?></p>
                        </div>
                    </li>
                </ul>  
						
		    <input type="submit" value="Удалить" class="button button--remove mt-15 mr-20" name='jobsDelete'>

            <a href="<?=HOST?>edit-jobs" class="button mt-15">Отмена</a>

            </form>
        </div>
    </div>
</div>