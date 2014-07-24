<?php
/**
 *
 */
ob_start();

#starting the users session
session_start();

require "config/app.php";
// identical to require; but php will include it only if it has not already been included
require_once ROOT_PATH . 'app/config/database.php';
require_once ROOT_PATH . "app/models/User.php";
require_once ROOT_PATH . "app/models/Users.php";
require_once ROOT_PATH . "app/models/Admin.php";
require_once ROOT_PATH . "app/models/Tutor.php";
require_once ROOT_PATH . "app/models/Secretary.php";
require_once ROOT_PATH . "app/models/General.php";
require_once ROOT_PATH . "app/models/Courses.php";

$errors = array();

try {
	$db = new DB();
	$users = new Users($db->getDbConnection());
	$general = new General();


// retrieves data if a user is logged in
// TODO: CEHCK IF DB IS INITALIZED.
	if ($general->logged_in() === true) {
		// instantiate user class & connect to db.
		$user_email = $_SESSION['email']; // getting user's id from the session.4

		$userData = $users->getData($user_email);
		// TODO: add secretary role.
		if ($userData['type'] == 'admin') {
			$user = new Admin($userData);
		} else if ($userData['type'] == 'tutor') {
			$user = new Tutor($userData);
		}

	}
} catch (Exception $e) {
	$errors[] = $e->getMessage();
	var_dump($errors);
	header('Location: ' . BASE_URL . 'error.php');
	exit();
}


?>