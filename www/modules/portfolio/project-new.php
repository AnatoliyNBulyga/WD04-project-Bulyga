<?php

if (!isAdmin()) {
   header("Location: " . HOST);
   die();
}

$title = "Портфолио - добавить новую работу";

$portfolio = R::find('portfolio', 'ORDER BY id ASC');


if (isset($_POST['projectNew'])) {

   if (trim($_POST['projectTitle']) == '') {
      $errors[] = ['title' => 'Введите название проекта'];
   }

  if (trim($_FILES['projectImg']['name']) == '') {
    $errors[] = ['title' => 'Загрузите preview проекта'];
  }

  if (trim($_POST['projectDescription']) == '') {
    $errors[] = ['title' => 'Введите описание проекта'];
  }

   if (empty($errors)) {
		// Alright, login!
      $portfolio = R::dispense('portfolio');
      $portfolio->title = htmlentities($_POST['projectTitle']);
      $portfolio->projectDescription = htmlentities($_POST['projectDescription']);
      $portfolio->projectFinalDescription = htmlentities($_POST['projectFinalDescription']);
      $portfolio->technologis = htmlentities($_POST['technologis']);
      $portfolio->linkProject = htmlentities($_POST['linkProject']);
      $portfolio->linkGithub = htmlentities($_POST['linkGithub']);
      $portfolio->authorId = $_SESSION['logged_user']['id'];
      $portfolio->dateTime = R::isoDateTime();

      if (isset($_FILES['projectImg']['name']) && $_FILES['projectImg']['tmp_name'] != "") {
			
			// Write file image params in variables
         $fileName = $_FILES['projectImg']['name'];
         $fileTmpLoc = $_FILES['projectImg']['tmp_name'];
         $fileType = $_FILES['projectImg']['type'];
         $fileSize = $_FILES['projectImg']['size'];
         $fileErrorMsg = $_FILES['projectImg']['error'];
         $kaboom = explode(".", $fileName);
         $fileExt = end($kaboom);

			// Check file properties on different conditions
         list($width, $height) = getimagesize($fileTmpLoc);
         if ($width < 10 || $height < 10) {
            $errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.'];

         }

         if ($fileSize > 4194304) {
            $errors[] = ['title' => 'Файл изображения не должен быть более 4Mb'];
         }

         if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)) {
            $errors[] = [
               'title' => 'Неверный формат файла',
               'descr' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, png</p>'
            ];
         }

         if ($fileErrorMsg == 1) {
            $errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку.'];
         }


        if (empty($errors)) {
            // Перемещаем загруженный файл в нужную директорию если массив с ошибками пустой
          $db_file_name = rand(10000000, 99999999) . "." . $fileExt;
          $portfolioImgFolderLocation = ROOT . 'usercontent/portfolio/';
          $uploadfile = $portfolioImgFolderLocation . $db_file_name;
          $moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

          if ($moveResult != true) {
              $errors[] = ['title' => 'Ошибка сохранения файла.'];
          }

          include_once(ROOT . "/libs/image_resize_imagick.php");

          $target_file = $portfolioImgFolderLocation . $db_file_name;
          $wmax = 920;
          $hmax = 620;
          $img = createThumbnailBig($target_file, $wmax, $hmax);
          $img->writeImage($target_file);
          $portfolio->projectImg = $db_file_name;

          $target_file = $portfolioImgFolderLocation . $db_file_name;
          $resized_file = $portfolioImgFolderLocation . "350-" . $db_file_name;
          $wmax = 350;
          $hmax = 140;
          $img = createThumbnailCrop($target_file, $wmax, $hmax);
          $img->writeImage($resized_file);
          $portfolio->portfolioImgSmall = "350-" . $db_file_name;

        }

      }
      // если массив с ошибками пустой то записываем в базу
      if (empty($errors)) {
        R::store($portfolio);
        header('Location: ' . HOST . "portfolio?result=projectCreated");
        exit();
      } 
   }
}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/project-new.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>