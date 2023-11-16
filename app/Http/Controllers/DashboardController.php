<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $data = [
            'User'      => User::count(),
            'Categories' => Category::count(),
            'Posts'      => Post::count(),
            'Tag'       => Tag::count()
        ];

        return view('dashboard.index', compact('data'));
    }
}
