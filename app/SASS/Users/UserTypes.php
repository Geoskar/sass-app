<?php namespace SASS\Users;
use Eloquent;

/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/23/2014
 */
class UserTypes extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'user_types';

	/**
	 * Field allowed to be mass assigned.
	 * @var array
	 */
	protected $fillable = ['type_name'];

	public function users()
	{
		return $this->hasMany('User');
	}
}