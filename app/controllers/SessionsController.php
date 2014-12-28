<?php

use SASS\Forms\SignInForm;

class SessionsController extends \BaseController {

	/**
	 * @var SignInForm
	 */
	private $signInForm;

	function __construct(SignInForm $signInForm)
	{
		$this->signInForm = $signInForm;

		$this->beforeFilter('guest');
	}


	/**
	 * Show the form for signing in.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('sessions.create')
			->with('title', 'Sign In');
	}

 	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$formData = Input::only('email', 'password');

		$this->signInForm->validate($formData);

		if (Auth::attempt($formData))
		{
			Flash::success('Welcome back!');

			return Redirect::intended('todo');
		}

	}


}
