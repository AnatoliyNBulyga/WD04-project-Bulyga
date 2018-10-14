<?php 

require "config.php";
require "db.php";
require "libs/functions.php";

session_start();


$errors = array();
$success = array();


/*...............................................

РОУТЕР

................................................ */

// request URL = http://project/blog/post?id=15
$uri = $_SERVER['REQUEST_URI']; 
$uri = rtrim($uri, "/"); 
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0] ) {
	case '':
		include "modules/main/index.php";
		break;

// :::::::::::::::::::::USERS::::::::::::::::::::::::::::::::::
	
	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-password':
		include ROOT . "modules/login/set-password.php";
		break;
		
	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		include ROOT . "modules/profile/profile-edit.php";
		break;	

// :::::::::::::::::::::ABOUT::::::::::::::::::::::::::::::::::								

	case 'about':
		include "modules/about/about.php";
		break;

// :::::::::::::::::::::CONTACTS::::::::::::::::::::::::::::::::::	

	case 'contacts':
		include "modules/contacts/contacts.php";
		break;

// :::::::::::::::::::::CATEGORIES::::::::::::::::::::::::::::::::::	

	case 'blog/categories':
		include "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include "modules/categories/new.php";
		break;	

	case 'blog/category-edit':
		include "modules/categories/edit.php";
		break;	

	case 'blog/category-delete':
		include "modules/categories/delete.php";
		break;		

// :::::::::::::::::::::BLOG::::::::::::::::::::::::::::::::::	

	case 'blog':
		include "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include "modules/blog/post-new.php";
		break;

	case 'blog/post':
		include "modules/blog/post.php";
		break;	

// :::::::::::::::::::::PORTPHOLIO::::::::::::::::::::::::::::::::::	

	case 'portfolio':
		include "modules/portfolio/portfolio.php";
		break;

// :::::::::::::::::::::404::::::::::::::::::::::::::::::::::	

	default:
		include "modules/main/index.php";
		break;

}



 ?>