<?php 

$title = "Профиль пользователя";


// Готовим  контент  для центаральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>