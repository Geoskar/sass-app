<?php

class PagesController extends \BaseController {

	public function dashboard()
	{
		return View::make('pages.dashboard')
			->with('title', 'Dashboard')
			->with('env', getenv('APP_ENV'));
	}

	public function createUser()
	{
//		return View::make('pages')
	}
}
