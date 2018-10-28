<section class="my-portfolio">
   <div class="my-portfolio__gradient">
      <div class="my-portfolio__logo pt-55 mb-100 ml-50">
         <div class="logo">
            <div class="logo-icon"><i class="far fa-paper-plane"></i></div>
            <div class="logo_description"><a class="header-logo__title" href="<?= HOST ?>">Digital Lifestyle</a><a class="header-logo__sub" href="<?= HOST ?>">Сайт IT специалиста</a></div>
         </div>
      </div>
      <div class="container user-content">
         <form action="<?=HOST?>portfolio/project-delete?id=<?= $portfolio['id'] ?>" method="POST">
            <div class="row">
               <div class="col-md-10 mb-30 offset-md-1 my-portfolio__row">

                  <h1>Удалить работу</h1>
                  
                  <input type="submit" class="button button--remove" name="projectDelete" value="Удалить">
                  <a href="<?= HOST ?>portfolio/project?id=<?= $portfolio['id'] ?>" class="button button--back">Отмена</a>

               </div>
            </div>
         </form>
         <div class="row">
            <div class="col-md-10 offset-md-1">
               <div class="post mb-0">

                  <?php if ($portfolio['project_img'] != "") { ?>
                     <div class="post-img">
                        <img src="<?= HOST ?>usercontent/portfolio/<?= $portfolio['project_img'] ?>" alt="<?= $portfolio['firstname'] ?> <?= $portfolio['secondname'] ?>" />
                     </div>
                  <?php 
               } ?>

               </div>
            </div>
         </div>
      </div>
   </div>
</section>

</div>