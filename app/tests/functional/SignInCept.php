<?php
$I = new FunctionalTester($scenario);
$I->am('a SASS App user');
$I->wantTo('sign in to my SASS account.');

$I->signIn();

$I->seeInCurrentUrl('/todo');
$I->see('Welcome back!');
