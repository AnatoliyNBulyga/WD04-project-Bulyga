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
		include "modules/about/index.php";
		break;

	case 'edit-text':
		include "modules/about/edit-text.php";
		break;

	case 'edit-skills':
		include "modules/about/edit-skills.php";
		break;

	case 'edit-jobs':
		include "modules/about/edit-jobs.php";
		break;	

	case 'delete-jobs':
		include "modules/about/delete-job-card.php";
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

	case 'blog/post-edit':
		include "modules/blog/post-edit.php";
		break;	

	case 'blog/post-delete':
		include "modules/blog/post-delete.php";
		break;


// :::::::::::::::::::::CONTACTS:::::::::::::::::::::::::::::::::	

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include "modules/contacts/contacts-edit.php";
		break;	

	case 'messages':
		include "modules/contacts/messages.php";
		break;

	case 'contacts/message-delete':
		include "modules/contacts/message-delete.php";
		break;		

// :::::::::::::::::::::PORTPHOLIO::::::::::::::::::::::::::::::::::	

	case 'portfolio':
		include "modules/portfolio/index.php";
		break;

	case 'portfolio/project':
		include "modules/portfolio/project.php";
		break;	

	case 'portfolio/project-new':
		include "modules/portfolio/project-new.php";
		break;


	case 'portfolio/project-edit':
		include "modules/portfolio/project-edit.php";
		break;

	case 'portfolio/project-delete':
		include "modules/portfolio/project-delete.php";
		break;	

// ::::::::::::::::::::: E-SHOP ::::::::::::::::::::::::::::

		case 'shop':
			include "modules/shop/index.php";
			break;

		case 'shop/new':
			include ROOT . "modules/shop/item-new.php";
			break;

		case 'shop/item':
			include ROOT . "modules/shop/item.php";
			break;

		case 'shop/item-edit':
			include ROOT . "modules/shop/item-edit.php";
			break;

		case 'shop/item-delete':
			include ROOT . "modules/shop/item-delete.php";
			break;

// ::::::::::::::::::::: E-SHOP ::::::::::::::::::::::::::::

		case 'addtocart':
		include ROOT . "modules/cart/addtocart.php";
		break;			


// :::::::::::::::::::::404::::::::::::::::::::::::::::::::::	

	default:
		include "modules/main/index.php";
		break;

}



 ?>