<?php

use Illuminate\Support\Facades\App;

class PagesController extends \BaseController {

	public function home()
	{
		return View::make('pages.home')
			->with('title', 'Home')
			->with('env', App::environment());
	}

}
