<?php

use SASS\Forms\UserCreationForm;

class UsersController extends \BaseController {

	/**
	 * @var UserCreationForm
	 */
	private $userCreationForm;

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
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$this->userCreationForm->validate(Input::all());

		User::create(
			Input::only('first_name', 'last_name', 'email', 'user_type_id')
		);

		return Redirect::route('show_users')
			->with('message', 'Admin account successfully created.');
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
