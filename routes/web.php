<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\eduFun;

Route::get('/home', [eduFun::class,'home']);

Route::get('/category/{option}', [eduFun::class,'category']);

Route::get('/writers', [eduFun::class,'writers']);

Route::get('/aboutus', [eduFun::class,'aboutUs']);