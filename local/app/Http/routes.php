<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');

Route::get('welcome','WelcomeController@index');

Route::get('home', 'HomeController@index');

Route::get('bobinka','BobinkaController@index');

Route::get('dostavka','DostavkaController@index');

Route::get('skidki','SkidkiController@index');

Route::get('kontakty','KontaktyController@index');

Route::get('silk','SilkController@index');

Route::controller('orders','OrdersController');

Route::get('detskaya','DetskayaController@index');

Route::get('fantasy','FantasyController@index');

Route::get('acryl','AcrylController@index');

Route::get('angora','AngoraController@index');

Route::get('bambuk','BambukController@index');

Route::get('viskoza','ViskozaController@index');

Route::get('lurex','LurexController@index');

Route::get('nylon','NylonController@index');

Route::get('paetki','PaetkiController@index');

Route::get('polyamid','PolyamidController@index');

Route::get('polyester','PolyesterController@index');

Route::get('hlopok','HlopokController@index');

Route::get('wool','WoolController@index');

Route::get('silka','SilkaController@index');

Route::controllers([
    'adminka' => 'Adminka\MainController',
    'auth' => 'Auth\AuthController',
    'password' => 'Auth\PasswordController',
]);
