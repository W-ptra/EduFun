<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\eduFun;

Route::get('/home', [eduFun::class,'home']);

Route::get('/category/{option}', [eduFun::class,'category']);

Route::get('/post/{id}', [eduFun::class,'post']);

Route::get('/writers', [eduFun::class,'writers']);

Route::get('/writerPost/{writer}', [eduFun::class,'writerPost']);

Route::get('/aboutus', [eduFun::class,'aboutUs']);

Route::get('/popular/{page}', [eduFun::class,'popular']);