<?php
/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/23/2014
 */

namespace SASS\Forms;

use Laracasts\Validation\FormValidator;

class UserCreationForm extends FormValidator {

	/**
	 * Validation rules for creating new user form.
	 * @var array
	 */
	protected $rules = [
		'first_name'   => 'required|alpha|between:3,35',
		'last_name'    => 'required|alpha|between:3,35',
		'email'        => 'required|email|unique:users',
		'user_type_id' => 'integer:exists:user_types,id'
	];
}