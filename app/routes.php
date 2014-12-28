<?php

Event::listen('SASS.UserCreation.Events.UserCreated', function ($event)
{
//	dd('send a notification email');
});

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

use SASS\Users\UserTypes;

Route::get('/', [
	'as'   => 'dashboard',
	'uses' => 'PagesController@dashboard'
]);

Route::get('users', [
	'as'   => 'show_users',
	'uses' => 'UsersController@index'
]);

/**
 * Add new user account!
 */
Route::get('users/create', [
	'as'   => 'create_user_path',
	'uses' => 'UsersController@create'
]);

Route::post('users/create', [
	'as'   => 'create_user_path',
	'uses' => 'UsersController@store'
]);


/**
 * Sessions
 */
Route::get('login', [
	'as'   => 'login_path',
	'uses' => 'SessionsController@create'
]);

Route::post('login', [
	'as'   => 'login_path',
	'uses' => 'SessionsController@store'
]);


/**
 * Views.
 */
View::composer('pages.users.create', function ($view)
{
	$user_types = UserTypes::all();

	$user_options = array_combine($user_types->lists('id'),
		$user_types->lists('type_name'));

	$view->with('user_options', $user_options);
});
