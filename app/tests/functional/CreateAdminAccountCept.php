<?php
$I = new FunctionalTester($scenario);
$I->am('an admin');
$I->wantTo('create an admin account for the SASS app');

$I->amOnPage('/users');
$I->click('Create User');

$I->seeCurrentUrlEquals('/users/create');

$I->fillField('First Name', 'James');
$I->fillField('Last Name', 'Potter');
$I->fillField('Email', 'dev.sass.ms@gmail.com');
$I->selectOption('Type', 'Admin');
$I->click('Create');

$I->seeCurrentUrlEquals('/users');
$I->see('Operator account successfully created.');