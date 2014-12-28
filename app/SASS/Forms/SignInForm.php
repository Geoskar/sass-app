<?php namespace SASS\Forms;

/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/25/2014
 */

use Laracasts\Validation\FormValidator;

class SignInForm extends FormValidator {

	/**
	 * Validation rules for signing in a user.
	 * @var array
	 */
	protected $rules = [
		'email'    => 'required',
		'password' => 'required'
	];
}