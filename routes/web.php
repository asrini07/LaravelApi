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
Route::resource('mahasiswa','mahasiswa');
Route::get('/', function(){
    return view('content');
});
//Route::put('mahasiswa/update/{id}', 'mahasiswa@update');
// Route::get('/halaman-kedua',function(){
//     return view('halamandua');
// });


// Route::get('/', function () {
//     return view('welcome');
// });
