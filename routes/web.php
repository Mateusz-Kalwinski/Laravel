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

Route::get('/', function () {
    return view('welcome');
});

// edit doctor
Route::get('doctors/edit/{id}', 'DoctorController@edit');

//create doctor
Route::get('doctors/create', 'DoctorController@create');

// doctors list
Route::get('doctors/', 'DoctorController@index');

//show single doctor profile
Route::get('doctors/{id}', 'DoctorController@show');

Route::get('specializations/', 'SpecializationController@index');



Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
