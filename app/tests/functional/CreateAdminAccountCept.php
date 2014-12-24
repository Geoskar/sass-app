<?php
$I = new FunctionalTester($scenario);
$I->am('admin');
$I->wantTo('create an admin account for the SASS app');

$I->amOnPage('/users');
$I->click('Create User');

$I->seeCurrentUrlEquals('/users/create');

$I->fillField('First Name:', 'James');
$I->fillField('Last Name:', 'Potter');
$I->fillField('Email:', 'dev.sass.ms@gmail.com');
$I->selectOption('Account Type:', 'Admin');
$I->click('Create');

$I->seeCurrentUrlEquals('/users');
$I->see('User successfully created.');

$I->seeRecord('users',
	[
		'first_name' => 'James',
		'last_name'  => 'Potter',
		'email'      => 'dev.sass.ms@gmail.com'
	]
);

//check if user is logged in
//$I->assertTrue(Auth::check());