<?php
require '../app/init.php';
$general->logged_out_protect();

$page_title = "Manage Courses";
$section = "courses-majors";

try {
	$all_users = $users->getAll();
} catch (Exception $e) {
	$errors[] = $e->getMessage();
}

require ROOT_PATH . 'app/views/head.php';
require ROOT_PATH . 'app/views/sidebar.php';
?>