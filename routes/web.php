<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//LARAVEL API
Route::get('/mahasiswaapi','Controllerapi@index');
Route::get('/mahasiswaapi/{id}',"Controllerapi@show");
Route::post('/mahasiswaapi/store',"Controllerapi@store");
Route::post('/mahasiswaapi/update/{id}','Controllerapi@update');
Route::post('/mahasiswaapi/delete/{id}','Controllerapi@destroy');

//LARAVEL CRUD
Route::resource('mahasiswa','mahasiswa');
//Route::get('/', function(){
  //  return view('content');
//});
// Route untuk user yang baru register
Route::group(['prefix'=>'home', 'middleware'=>['auth']], function(){
  Route::get('/', function(){
    $data['role']=\App\UserRole::whereUserId(Auth::id())->get();
    return view('home',$data);
  });
  Route::post('upgrade', function(Request $request){
    if($request->ajax()){
      $msg['success']='false';
      $user= \App\User::find($request->id);
      if($user)
        $user->putRole($request->level);
        $msg['success']='true';
      return response()
        ->json($msg);
    }
  });
});

// Route untuk user yang admin
Route::group(['prefix'=>'admin', 'middleware'=>['auth','role:admin']], function(){
  Route::get('/', function(){
    $data['users']=\App\User::whereDoesntHave('roles')->get();
    return view('admin', $data);
  });
});

// Route untuk user yang member
Route::group(['prefix' => 'user', 'middleware' => ['auth','role:user']], function(){
	Route::get('/', function(){
		return view('user');
	});
});







//Route::put('mahasiswa/update/{id}', 'mahasiswa@update');
// Route::get('/halaman-kedua',function(){
//     return view('halamandua');
// });


// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');
Route::resource('mahasiswa','mahasiswa');
