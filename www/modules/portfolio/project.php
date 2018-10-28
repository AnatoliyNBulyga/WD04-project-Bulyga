<?php

$sqlPost = '
				SELECT 
						portfolio.id, portfolio.title, portfolio.project_img, portfolio.project_description, portfolio.project_final_description, portfolio.technologis, portfolio.date_time, portfolio.author_id, portfolio.link_project, portfolio.link_github,
						users.firstname, users.secondname
				FROM `portfolio`
				INNER JOIN users ON portfolio.author_id = users.id
				WHERE portfolio.id = ' . $_GET['id'] . ' LIMIT 1 ';

$portfolio = R::getAll($sqlPost);
$portfolio = $portfolio[0];


$title = "Портфолио";


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/project.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>