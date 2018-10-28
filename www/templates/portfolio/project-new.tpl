<div class="content">
   <div class="container user-content section-page">

      <form action="<?= HOST ?>portfolio/project-new" method="POST" enctype="multipart/form-data">
         <div class="row">
            <div class="col-md-10 offset-md-1">
                  <?php require ROOT . "templates/_parts/_errors.tpl"; ?>
                  
                  <h1>Добавить работу</h1>
                  <div class="form-group">
                     <label class="label">Название
                        <input class="input" name="projectTitle" type="text" placeholder="Введите название работы" />
                     </label>
                  </div>
                  <p class="label mb-0">Изображение</p>
                  <p class="mt-0">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 4Мб.</p>

                  <input class="inputfile" type="file"  name="projectImg" id="file" />

                  <label class="label-input-file" for="file">Выбрать файл</label>

                  <span>Файл не выбран</span>
                  <div class="form-group">
                     <label class="label"> Содержание
                        <textarea id="ckEditor" class="textarea" name="projectDescription" placeholder="Введите описание"></textarea>
                     </label>
                  </div>
                  <div class="form-group">
                     <label class="label"> Результат
                        <textarea id="ckEditor-2" class="textarea" name="projectFinalDescription" placeholder="Введите описание"></textarea>
                     </label>
                  </div>
                  <div class="form-group">
                     <label class="label"> Технологии
                        <textarea id="ckEditor-3" class="textarea" name="technologis" placeholder="Введите описание"></textarea>
                     </label>
                  </div>
            </div>
         </div>
         <div class="project-links">
            <div class="row">
               <div class="col-md-3 offset-md-1">
                  <div class="form-group">
                     <label class="label">Ссылка на проект
                        <input class="input" name="linkProject" type="text" placeholder="Введите ссылку" />
                     </label>
                  </div>
               </div>
               <div class="col-md-3">
                  <div class="form-group">
                     <label class="label">Ссылка на GitHub
                        <input class="input" name="linkGithub" type="text" placeholder="Введите ссылку" />
                     </label>
                  </div>
               </div>
            </div>
         </div>
         <div class="project-buttons">
            <div class="row">
               <div class="col-md-12 offset-md-1">
               <input class="button button--save" type="submit" name="projectNew" value="Сохранить">
               <a class="button" href="<?=HOST?>portfolio">Отмена</a></div>
            </div>
         </div>
      </form>
      
   </div>
</div>
<?php include_once ROOT . 'templates/_parts/_ckEditorConnect.tpl'; ?>