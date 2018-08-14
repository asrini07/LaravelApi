<?php

use Illuminate\Http\Request;

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

//Route::post('login', 'API\UserController@login');
Route::group(['namespace' => 'Auth'], function () {
    Route::post('login', 'API\UserController@login');
});
Route::post('register', 'API\UserController@register');

Route::group(['middleware' => 'auth:api'], function(){
    Route::post('details', 'API\UserController@details');
    
    //Route::resource('apimahasiswa', 'API\MahasiswaController');
});

Route::get('apimahasiswa/view', 'API\MahasiswaController@index')
    ->middleware(['auth:api', 'scopes:admin, user']);
Route::get('apimahasiswa/view/{id}', 'API\MahasiswaController@show')
    ->middleware(['auth:api', 'scopes:admin, user']);
   // ->middleware(['auth:api', 'scopes:manage-order, read-only-order']);
Route::post('apimahasiswa','API\MahasiswaController@store')
   ->middleware(['auth:api', 'scopes:admin']);
Route::post('apimahasiswa/{id}','API\MahasiswaController@update')
    ->middleware(['auth:api', 'scopes:admin']);


Route::post('/api/orders', 'OrderController@store')
    ->middleware(['auth:api', 'scopes:manage-order']);



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::post('apimahasiswa/{id}','API\MahasiswaController@update');
