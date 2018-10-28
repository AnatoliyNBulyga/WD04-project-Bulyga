<?php

if (!isAdmin()) {
   header("Location: " . HOST);
   die();
}

$title = "Портфолио - удалить работу";

$portfolio = R::load('portfolio', $_GET['id']);

if (isset($_POST['projectDelete'])) {

   $portfolioImgFolderLocation = ROOT . 'usercontent/portfolio/';

	// Если изображение уже загружено, то  будем удалять  его
   $portfolioImg = $portfolio->project_img;
   if ($portfolioImg != "") {
      $picurl = $portfolioImgFolderLocation . $portfolioImg; //usercontent/avatar/foto.png
      if (file_exists($picurl)) {
         unlink($picurl);
      }
      $picurl350 = $portfolioImgFolderLocation . '350-' . $portfolioImg;
      if (file_exists($picurl350)) {
         unlink($picurl350);
      }
   }

   R::trash($portfolio);
   header('Location: ' . HOST . "portfolio?result=projectDeleted");
   exit();

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/project-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>