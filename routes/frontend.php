<?php
use Illuminate\Support\Facades\Route;


Route::get('/logout', 'App\Http\Controllers\frontend\homepage@logout')->name('/logout');


Route::get('/', 'App\Http\Controllers\frontend\homepage@index')->name('/');

Route::get('/Shop-Category', 'App\Http\Controllers\frontend\category@ShopCategory')->name('/Shop-Category');

Route::get('/single-product/{id}', 'App\Http\Controllers\frontend\category@singleproduct')->name('/single-product');

Route::get('/signup', function () {
    return view('frontend.login.signup');
});

Route::get('/signin', function () {
    return view('frontend.login.signin');
});

Route::post('/signupData', 'App\Http\Controllers\frontend\homepage@signupData')->name('/signupData');



Route::get('/booking/{id}', 'App\Http\Controllers\frontend\booking@booking')->name('/booking');
Route::get('/viewTransport/{cat}/{id}', 'App\Http\Controllers\frontend\booking@viewTransport')->name('/viewTransport');
Route::get('/viewPackage/{id}', 'App\Http\Controllers\frontend\booking@viewPackage')->name('/viewPackage');
Route::get('/viewAllPackage', 'App\Http\Controllers\frontend\booking@viewAllPackage')->name('/viewAllPackage');
Route::get('/viewAllHotel', 'App\Http\Controllers\frontend\booking@viewAllHotel')->name('/viewAllHotel');
Route::get('/hotelFullView/{id}', 'App\Http\Controllers\frontend\booking@hotelFullView')->name('/hotelFullView');


Route::get('/userProfile', 'App\Http\Controllers\frontend\homepage@userProfile')->name('/userProfile');


Route::get('/viewCart', 'App\Http\Controllers\frontend\cart@viewCart')->name('/viewCart');








//////////////////////////// cart//////////////////////////////////////

Route::post('/cart', 'App\Http\Controllers\frontend\cart@add')->name('/cart');

Route::post('/shoppingCart', 'App\Http\Controllers\frontend\cart@shoppingCart')->name('/shoppingCart');

Route::post('/shoppingCartSingleProduct', 'App\Http\Controllers\frontend\cart@shoppingCartSingleProduct')->name('/shoppingCartSingleProduct');


Route::post('/busbooking', 'App\Http\Controllers\frontend\cart@addBusBooking')->name('/busbooking');

Route::post('/viewTransportbooking/{cat}/{id}', 'App\Http\Controllers\frontend\cart@addBusBooking')->name('/viewTransportbooking');

Route::post('/carbooking', 'App\Http\Controllers\frontend\cart@carbooking')->name('/carbooking');








// become a saller


Route::get('/shopReg', function () {
    return view('frontend.signup.shop');
});


Route::get('/airReg', function () {
    return view('frontend.signup.air');
});


Route::get('/carReg', function () {
    return view('frontend.signup.car');
});


Route::get('/busReg', function () {
    return view('frontend.signup.bus');
});


Route::get('/hotelReg', function () {
    return view('frontend.signup.hotel');
});




Route::post('/joinVendor', 'App\Http\Controllers\frontend\homepage@joinVendor')->name('/joinVendor');

Route::post('/joinAir', 'App\Http\Controllers\frontend\homepage@joinAir')->name('/joinAir');
