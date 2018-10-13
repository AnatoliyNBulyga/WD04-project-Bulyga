<?php

$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];
$user = R::load('users', $currentUser->id);

if ( isset($_POST['profile-update']) ) {

	if( trim($_POST['email'] ) == '') {
		$errors[] = ['title' => 'Введите Email'];
	}

	if( trim($_POST['firstname']) == '') {
		$errors[] = ['title' => 'Введите Имя'];
	}

	if( trim($_POST['secondname']) == '') {
		$errors[] = ['title' => 'Введите Фамилию'];
	}

	if ( empty($errors) ) {

		$user->firstname = htmlentities($_POST['firstname']);
		$user->secondname = htmlentities($_POST['secondname']);
		$user->email = htmlentities($_POST['email']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);

		if ( isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "" ) {

			// Write file image params in variables
			$fileName = $_FILES['avatar']['name'];
			$fileTmpLoc = $_FILES['avatar']['tmp_name'];
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorsMsg = $_FILES['avatar']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file properties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10 ) {
				$errors[] = ['title' => 'Загрузите изображение побольше.'];
			}

			if ( $fileSize >  4194304 ) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 mb'];
			}

			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[] = ['title' => 'Неверный формат файла',
											'descr' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, png</p>'
										];	
			}

			if ( $fileErrorsMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку.'];
			}

			// Проверяем установлен ли аватар  пользователя
			$avatar = $user->avatar;
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			// Если аватар уже  уже загружен, то  будем удалять  его
			if ( $avatar != "" ) {
				$picurl = $avatarFolderLocation . $avatar; //usercontent/avatar/foto.png
				// удаляем аватар
				// die($picurl);
				if ( file_exists($picurl) ) { unlink($picurl); }
				$picurl48 = $avatarFolderLocation . '48-' . $avatar;
				if ( file_exists($picurl48) ) { unlink($picurl48); }
			}	

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(10000000, 99999999) . "." . $fileExt;
			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла.'];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img -> writeImage($resized_file);

			$user->avatar = $db_file_name;

			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "48-" . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img =createThumbnail($target_file, $wmax, $hmax);
			$img -> writeImage($resized_file);
			$user->avatarSmall = "48-" . $db_file_name;
		}

		R::store($user);
		$_SESSION['logged_user'] = $user;
		header('Location: ' . HOST . "profile");
		exit();
	}

}


// Готовим  контент  для центаральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим основные шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>
