<?php namespace SASS\UserCreation;

/**
 * @author Rizart Dokollari <r.dokollari@gmail.com>
 * @version  12/24/2014
 */

use Laracasts\Commander\CommandHandler;
use SASS\Users\UserRepository;
use SASS\Users\User;

class CreateUserCommandHandler implements CommandHandler {

	protected $repository;

	/**
	 * @param $repository
	 */
	function __construct(UserRepository $repository)
	{
		$this->repository = $repository;
	}

	/**
	 * Handle the command
	 *
	 * @param $command
	 * @return mixed
	 */
	public function handle($command)
	{
		$user = User::createUser(
			$command->first_name, $command->last_name, $command->email, $command->user_type_id
		);

		$this->repository->save($user);

		return $user;
	}
}