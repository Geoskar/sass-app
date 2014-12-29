<?php
$I = new FunctionalTester($scenario);
$I->am('a SASS App user');
$I->wantTo('sign in to my SASS account.');

$I->signIn();

$I->assertTrue(Auth::check());

$I->seeInCurrentUrl('/tasks');
$I->see('Welcome back!');
