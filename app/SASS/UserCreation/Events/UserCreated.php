<?php namespace SASS\UserCreation\Events;

/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/24/2014
 */


use SASS\Users\User;

class UserCreated {

	public $user;

	function __construct(User $user)
	{
		$this->$user = $user;
	}

}