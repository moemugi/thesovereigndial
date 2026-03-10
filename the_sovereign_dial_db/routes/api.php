<?php

use Illuminate\Http\Request;
use App\Http\Controllers\CoffeeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CouponController; 
use App\Http\Controllers\UserController;
use App\Http\Controllers\AddressController;
use App\Http\Controllers\OrderController;


// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');


Route::post('signup', [UserController::class, 'store']);
Route::post('login', [UserController::class, 'login']);


Route::group(['middleware' => ['auth:sanctum']], function() {

//Users
Route::get('profile', [UserController::class, 'show']);
Route::get('logout', [UserController::class, 'logout']);

//Coffees
Route::resource('coffee',CoffeeController::class);
Route::post('coffees/{id}',[CoffeeController::class, 'update']);
Route::post('bulk',[CoffeeController::class, 'insert']);

//Coupons
Route::post('bulk_coupons',[CouponController::class,'bulkInsert']);
Route::resource('coupon',CouponController::class);

//Addresses
Route::resource('address',AddressController::class);

//Orders
Route::resource('order',OrderController::class);

});