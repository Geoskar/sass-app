<?php namespace SASS\Users;


/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/24/2014
 */
class UserRepository {

	/**
	 * Persist a user
	 *
	 * @param User $user
	 * @return mixed
	 */
	public function save(User $user)
	{
		return $user->save();
	}
}