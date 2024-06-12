<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ImageUploadController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// --------------------------------- get ----------------------------------------

Route::get('/images', [ImageController::class, 'index']);
Route::get('/allImages', [ImageController::class, 'getAllImages']);
Route::get('/images/sal', [ImageController::class, 'getSalImages']);
Route::get('/images/kendo', [ImageController::class, 'getKendoImages']);
Route::get('/carouselImages', [ImageController::class, 'getCarouselImages']);

// --------------------------------- post ----------------------------------------

Route::post('/uploadsal', [ImageUploadController::class, 'uploadSal']);
Route::post('/uploadkendo', [ImageUploadController::class, 'uploadKendo']);
Route::post('/uploadcarousel', [ImageUploadController::class, 'uploadCarousel']);

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// --------------------------------- delete ----------------------------------------

Route::delete('/images/{imageName}', [ImageController::class, 'deleteImage']);