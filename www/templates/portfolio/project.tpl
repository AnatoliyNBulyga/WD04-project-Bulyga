<section class="my-portfolio">
   <div class="my-portfolio__gradient">
      <div class="my-portfolio__logo pt-55 mb-100 ml-50">
         <div class="logo logo--portfolio">
            <div class="logo-icon"><i class="far fa-paper-plane"></i></div>
            <div class="logo_description"><a class="header-logo__title" href="<?= HOST ?>">Digital Lifestyle</a><a class="header-logo__sub" href="<?= HOST ?>">Сайт IT специалиста</a></div>
         </div>
      </div>
      <div class="container user-content user-content--custom">
         <div class="row">
            <div class="col-md-10 mt-25 mb-10 offset-md-1">
               <h1><?=$portfolio['title']?></h1>

               <?php if (isAdmin()) { ?>

                  <a class="button button--remove" href="<?= HOST ?>portfolio/project-delete?id=<?= $portfolio['id'] ?>">Удалить</a>

                  <a class="button button--edit" href="<?=HOST?>portfolio/project-edit?id=<?= $portfolio['id'] ?>">Редактировать</a>
               
				   <?php } ?>

            </div>
         </div>
         <div class="row">
            <div class="col-md-10 offset-md-1">
               <div class="post mb-0">
                  <div class="post-infom mt-0">
                     <div class="post-info__subtitle mb-30 my-portfolio__row">
                        <div class="post-info__author"><?= $portfolio['firstname'] ?> <?= $portfolio['secondname'] ?></div>
                        <div class="post-info__topic"> <a class="post-info__link" href="#">Работы</a></div>
                        <div class="post-info__date"><?= $portfolio['date_time'] ?></div>
                     </div>
                  </div>

                  <?php if ($portfolio['project_img'] != "") { ?>
                     <div class="post-img">
                        <img src="<?= HOST ?>usercontent/portfolio/<?= $portfolio['project_img'] ?>" alt="<?= $portfolio['firstname'] ?> <?= $portfolio['secondname'] ?>" />
                     </div>
                  <?php } ?>

               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<section class="my-portfolio__description">
   <div class="container user-content">
      <div class="row">
         <div class="mb-50 col-md-10 my-portfolio__row offset-md-1">
            <div class="col-md-6 ml-md-0 pl-md-0">

               <?php if ($portfolio['project_description'] != "") { ?>
                  <h3>Кратко о проекте</h3>
                  <p><?= $portfolio['project_description'] ?></p>
               <?php } ?>

               <?php if ($portfolio['project_final_description'] != "") { ?>
                  <h3>Результат</h3>
                  <p><?= $portfolio['project_final_description'] ?></p>
               <?php } ?>
            </div>
            <div class="col-md-4">
               <h3>Технологии</h3>
               <?php if ($portfolio['technologis'] != "") { ?>
                  <nav class="my-portfolio__nav">
                     <?= $portfolio['technologis'] ?>
                  </nav>
               <?php } ?>

               <?php if ($portfolio['link_github'] != "") { ?>
                  <h3>Ссылка на проект</h3>
                  <a href="<?= $portfolio['link_project'] ?>">
                     <?= $portfolio['link_project'] ?>
                  </a>
               <?php } ?>

               <?php if ( $portfolio['link_github'] != "") { ?>
                  <h3>Код на github</h3>
                  <a href="<?= $portfolio['link_github'] ?>" >
                  <?= $portfolio['link_github'] ?>
                  </a>
               <?php } ?>

            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-md-10 my-portfolio__buttons-nav offset-md-1"><a class="button button--icon-left" href="<?=HOST?>portfolio"><i class="fas fa-arrow-left"></i>Все работы</a><a class="button button--icon-right" href="#">Следующая работа<i class="fas fa-arrow-right"></i></a></div>
      </div>
   </div>
</section>
</div>