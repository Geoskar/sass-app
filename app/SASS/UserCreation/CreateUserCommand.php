<?php
/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/24/2014
 */

namespace SASS\UserCreation;


class CreateUserCommand {

	public $first_name;

	public $last_name;

	public $email;

	public $password;

	public $user_type_id;

	function __construct($first_name, $last_name, $email, $user_type_id)
	{
		$this->first_name = $first_name;
		$this->last_name = $last_name;
		$this->email = $email;
		$this->user_type_id = $user_type_id;
	}


}