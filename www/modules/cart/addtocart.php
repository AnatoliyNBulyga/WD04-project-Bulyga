<?php 

// ID товара, который мы добавили в корзину
$currentItemId = intval($_POST['itemId']);

// Определяем локальную корзину
if (isset($_COOKIE['cart'])) {
	// json_decode - функция, которая преобразует JSON формат в объект
	// json_decode - функция, которая преобразует JSON формат в ассоциативный массив, если второй параметр true
	$cartLocal = json_decode($_COOKIE['cart'], true);
} else {
	$cartLocal = array();
}

// Если такой товар уже существует в Корзине, тогда увеличеваем его кол-во на 1, если нет, то записываем его кол-во = 1
if ( isset($cartLocal[$currentItemId]) ) {
	$items = $cartLocal[$currentItemId]; 
	$items++; // 3
	$cartLocal[$currentItemId] = $items; 

} else {
	$cartLocal[$currentItemId] = 1;
}

// Сохраняем Cookies
// json_encode - функция, которая преобразует ассоциативный массив в json формат
SetCookie('cart', json_encode($cartLocal));

// Если пользователь залогинен, то сохраняем в БД
if ( isLoggedIn() ) {
	$currentUser = $_SESSION['logged_user'];
	$user = R::load('users', $currentUser->id);
	$user->cart = json_encode($cartLocal);
	R::store($user);
	
}

header("Location: " . HOST . "shop/item?id=" . $currentItemId);
exit();


?>