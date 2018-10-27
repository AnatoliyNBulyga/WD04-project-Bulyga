<?php

$title = "Контакты";

$contacts = R::load('contacts', 1);

if ( isset($_POST['newMessage'])) {

   if (trim($_POST['name']) == '') {
      $errors[] = ['title' => 'Введите ваше имя'];
   }
   
   if( trim($_POST['email']) == '') {
      $errors[] = ['title' => 'Введите Email'];
   }

   if ( empty($errors)) {

      $message = R::dispense('messages');
      $message->email = htmlentities($_POST['email']);
      $message->name = htmlentities($_POST['name']);
      $message->message = htmlentities($_POST['message']);
      $message->dateTime = R::isoDateTime();

      if (isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != "") {

         // Write file image params in variables
         $fileName = $_FILES['file']['name'];
         $fileTmpLoc = $_FILES['file']['tmp_name'];
         $fileType = $_FILES['file']['type'];
         $fileSize = $_FILES['file']['size'];
         $fileErrorMsg = $_FILES['file']['error'];
         $kaboom = explode(".", $fileName);
         $fileExt = end($kaboom);

         // Перемещаем загруженный файл в нужную директорию
         $db_file_name = rand(10000000, 99999999) . "." . $fileExt;

         if ($fileSize > 4194304) {

            $errors[] = ['title' => 'Файл не должен быть более 4Mb'];

         } else if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)) {
            $errors[] = [
               'title' => 'Неверный формат файла',
               'descr' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, png</p>'
            ];
         } else if ($fileErrorMsg == 1) {
            $errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку.'];
         }

         if (empty($errors)) { 

            $postImgFolderLocation = ROOT . 'usercontent/upload_files/';

            // Перемещаем загруженный файл в нужную директорию
            $uploadfile = $postImgFolderLocation . $db_file_name;
            $moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

            if ($moveResult != true) {
               $errors[] = ['title' => 'Ошибка сохранения файла.'];
            }

            $message->message_file_name_original = $fileName;
            $message->message_file = $db_file_name;
         }

      }

      if (empty($errors)) {

         R::store($message);
   
         $success[] = ['title' => 'Сообщение было успешно отправлено!'];
         
      }  

   }


}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/contacts.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot_contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template_for_contacts.tpl";

 ?>