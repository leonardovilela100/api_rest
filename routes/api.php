<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::resource('product', 'App\Http\Controllers\ProductController');
Route::apiResource('product', 'App\Http\Controllers\ProductController');

Route::apiResource('cidades', 'App\Http\Controllers\CityController');




/*
Route::get('/cidades', function () {
    $cidades = \App\Models\Product::all(['id', 'cidade']);
    return $cidades;
});

*/
