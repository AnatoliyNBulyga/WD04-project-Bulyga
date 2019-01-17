<?php

/* Пагинация */
$number_of_results = R::count('posts');
$results_per_page = 3;
$number_of_pages = ceil($number_of_results / $results_per_page);

if ( !isset($_GET['page'])) {
	$page_number = 1;
} else {
	$page_number = $_GET['page'];
}

$starting_limit_number = ($page_number - 1) * $results_per_page;
$sql_pages_limit = 'LIMIT ' . $starting_limit_number . ',' . $results_per_page;

/* //Пагинация */

$title = "Блог - все записи";

$posts = R::find('posts', 'ORDER BY id DESC ' . $sql_pages_limit);


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-all-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>