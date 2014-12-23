<?php

/**
 * Created by PhpStorm.
 * User: Rizart
 * Date: 12/23/2014
 * Time: 1:05 AM
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
	protected $fillable = array('type_name');

	public function users()
	{
		return $this->hasMany('User');
	}
}