<?php 

require "config.php";
require "db.php";

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