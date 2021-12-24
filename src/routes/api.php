<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\Journel;
use App\Http\Controllers\UserController;
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

Route::post('/login', [AuthController::class, 'login']);



Route::post('/users/create', [UserController::class, 'store']);
Route::middleware(["auth:sanctum"])->group(function () {
    Route::resource('journel', Journel::class);
    Route::resource('users', UserController::class);
    Route::resource('roles', RoleController::class);

});

/* Route::group(['middleware' => ["auth","sanctum"]], function () {
Route::apiResource('users', UserController::class)->except([
'store'
]);
}); */
