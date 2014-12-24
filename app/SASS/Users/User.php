<?php namespace SASS\Users;

/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/23/2014
 */

use Eloquent;
use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class User extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait, RemindableTrait;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'users';

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	protected $hidden = ['password', 'remember_token'];

	/**
	 * Field allowed to be mass assigned.
	 * @var array
	 */
	protected $fillable = ['first_name', 'last_name', 'email', 'user_type_id'];

	/**
	 * Create a new user
	 *
	 * @param $first_name
	 * @param $last_name
	 * @param $email
	 * @param $user_type_id
	 * @return static
	 */
	public static function createUser($first_name, $last_name, $email, $user_type_id)
	{
		$user = new static(compact('first_name', 'last_name', 'email', 'user_type_id'));

		// raise an event e.g. send mail verification & password set

		return $user;
	}

	public function userType()
	{
		return $this->belongsTo('UserTypes');
	}
}
