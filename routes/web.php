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
//USERS
// edit doctor
Route::get('doctors/edit/{id}', 'DoctorController@edit');

//create doctor
Route::get('doctors/create', 'DoctorController@create');

// doctors list
Route::get('doctors/', 'DoctorController@index');

//show single doctor profile
Route::get('doctors/{id}', 'DoctorController@show');

// doctors with specialization list
Route::get('doctors/specializations/{id}', 'DoctorController@listBySpecializations');

//form / add doctor
Route::get('doctors/create', 'DoctorController@create');
// new doctor save
Route::post('doctors', 'DoctorController@store');



//SPECIALIZATIONS

Route::get('specializations/create', 'SpecializationController@create');

Route::post('specializations/', 'SpecializationController@store');

Route::get('specializations/', 'SpecializationController@index');





//VISITS

Route::get('visits/', 'VisitController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


//PATIENTS

// patients list
Route::get('patients/', 'PatientController@index');

//show single patient profile
Route::get('patients/{id}', 'PatientController@show');
