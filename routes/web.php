<?php

use Illuminate\Support\Facades\Route;

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
/* cara 1
Route::get('/localization/{language}',App\Http\Controllers\LocalizationController::class)->name('localization.switch'); */

// cara 2
Route::get('/localization/{language}', [\App\Http\Controllers\LocalizationController::class, 'switch'])->name('localization.switch');

// Home
Route::get('/', [\App\Http\Controllers\BlogController::class, 'home'])->name('blog.home');

// Home > Posts{Slug}
Route::get('/post/{slug}', [\App\Http\Controllers\BlogController::class, 'showPostDetail'])->name('blog.posts.detail');

// Home > Categories
Route::get('/categories', [\App\Http\Controllers\BlogController::class, 'showCategories'])->name('blog.categories');

// Home > Categories{Slug}
Route::get('/categories/{slug}', [\App\Http\Controllers\BlogController::class, 'showPostsByCategory'])->name('blog.posts.category');

// Home > Tags
Route::get('/tags', [\App\Http\Controllers\BlogController::class, 'showTags'])->name('blog.tags');

// Home > Tags{Slug}
Route::get('/tags/{slug}', [\App\Http\Controllers\BlogController::class, 'showPostsByTag'])->name('blog.posts.tag');

// Home > Search
Route::get('/search', [\App\Http\Controllers\BlogController::class, 'searchPosts'])->name('blog.search');

Auth::routes([
    'register' => false
]);

Route::group(['prefix' => 'dashboard', 'middleware' => ['web', 'auth']], function () {
    // Dashboard
    Route::get('/', [\App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard.index');
    // categories
    Route::get('categories/select', [\App\Http\Controllers\CategoryController::class, 'select'])->name('categories.select');
    Route::resource('/categories', \App\Http\Controllers\CategoryController::class);
    // Tags
    Route::get('tags/select', [\App\Http\Controllers\TagController::class, 'select'])->name('tags.select');
    Route::resource('/tags', \App\Http\Controllers\TagController::class)->except('show');
    // Posts
    Route::resource('/posts', \App\Http\Controllers\PostController::class);
    // File Manager
    Route::group(['prefix' => 'filemanager'], function () {
        Route::get('/index', [\App\Http\Controllers\FileManagerController::class, 'index'])->name('filemanager.index');
        \UniSharp\LaravelFilemanager\Lfm::routes();
    });
    // Roles
    Route::get('/roles.select', [\App\Http\Controllers\RoleController::class, 'select'])->name('roles.select');
    Route::resource('/roles', \App\Http\Controllers\RoleController::class);
    // Users
    Route::resource('/users', \App\Http\Controllers\UserController::class)->except(['show']);
});
