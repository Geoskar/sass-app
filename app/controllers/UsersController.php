<?php

use SASS\Core\CommandBus;
use SASS\Forms\UserCreationForm;
use SASS\UserCreation\CreateUserCommand;

class UsersController extends \BaseController {

	use CommandBus;

	/**
	 * @var UserCreationForm
	 */
	private $userCreationForm;

	/**
	 * Constructor
	 *
	 * @param UserCreationForm $userCreationForm
	 * @internal param CommandBus $commandBus
	 */
	function __construct(UserCreationForm $userCreationForm)
	{
		$this->userCreationForm = $userCreationForm;
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		return View::make('pages.users.index')
			->with('title', 'Users');
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('pages.users.create')
			->with('title', 'Create User');
	}


	/**
	 * Create a new SASS user.
	 *
	 * @return Response
	 */
	public function store()
	{
		$this->userCreationForm->validate(Input::all());

		extract(Input::only('first_name', 'last_name', 'email', 'user_type_id'));

		$this->execute(
			new CreateUserCommand($first_name, $last_name, $email, $user_type_id)
		);

		return Redirect::route('show_users');
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
