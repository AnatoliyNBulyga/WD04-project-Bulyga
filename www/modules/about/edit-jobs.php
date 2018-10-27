<?php 

if (!isAdmin()) {
   header("Location: " . HOST);
   die();
}

$title = "Редактировать - Обо мне";

$jobs = R::find('jobs', 'ORDER BY id DESC');

if (isset($_POST['newJob'])) {

   if (trim($_POST['period']) == '') {

      $errors[] = ['title' => 'Введите период работы'];

   }

   if (trim($_POST['title']) == '') {

      $errors[] = ['title' => 'Введите должность'];

   }

   if (empty($errors)) {

      $jobs = R::dispense('jobs');
      $jobs->period = htmlentities($_POST['period']);
      $jobs->title = htmlentities($_POST['title']);
      $jobs->description = htmlentities($_POST['description']);
      R::store($jobs);
      header('Location: ' . HOST . 'about');
      exit();
   }
}
// Готовим контент для центральной части
ob_start();
include ROOT . 'templates/_parts/_header.tpl';
include ROOT . 'templates/about/edit-jobs.tpl';
$content = ob_get_contents();
ob_end_clean();

// Выводим обычные шаблоны
include ROOT . 'templates/_parts/_head.tpl';
include ROOT . 'templates/template.tpl';
include ROOT . 'templates/_parts/_footer.tpl';
include ROOT . 'templates/_parts/_foot.tpl';
?>