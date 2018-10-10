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

	case 'about':
		include "modules/about/about.php";
		break;

	case 'contacts':
		include "modules/contacts/contacts.php";
		break;

	case 'blog':
		include "modules/blog/blog.php";
		break;

	default:
		include "modules/main/index.php";
		break;

}



 ?>