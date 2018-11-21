<?php

use Illuminate\Http\Request;
use App\Documents;
use App\User;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('register', 'Auth\AuthController@register');
Route::post('login', 'Auth\AuthController@login');
Route::post('logout', 'Auth\AuthController@logout');


Route::get('me', 'Auth\AuthController@me');

Route::get('documents', 'DocumentsController@index');
Route::get('documents/{documents}', 'DocumentsController@show');
Route::post('documents', 'DocumentsController@store');
Route::put('documents/{documents}', 'DocumentsController@update');
Route::delete('documents/{documents}', 'DocumentsController@delete');

Route::get('users', 'UsersController@index');
Route::get('users/{user}', 'UsersController@show');
Route::post('users', 'UsersController@store');
