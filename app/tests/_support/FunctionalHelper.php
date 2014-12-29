<?php namespace Codeception\Module;

use Laracasts\TestDummy\Factory as TestDummy;

// here you can define custom actions
// all public methods declared in helper class will be available in $I

class FunctionalHelper extends \Codeception\Module {

	/**
	 * Sign In
	 *
	 * @throws \Codeception\Exception\Module
	 */
	public function signIn()
	{
		$email = 'fooexample.com';
		$password = 'foo';

		$this->haveAnAccount(compact('email', 'password'));

		$I = $this->getModule('Laravel4');

		$I->amOnPage('/login');
		$I->fillField('Email:', $email);
		$I->fillField('Password:', $password);
		$I->click('Sign In');
	}

	public function haveAnAccount($overrides = [])
	{
		TestDummy::create('SASS\Users\User', $overrides);
	}
}
