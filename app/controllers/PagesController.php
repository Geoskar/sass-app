<?php

class PagesController extends \BaseController {

	public function home()
	{
		return View::make('pages.home')
			->with('title', 'Home');
	}

	public function users()
	{
		return View::make('pages.users')
			->with('title', 'Users');
	}

}
