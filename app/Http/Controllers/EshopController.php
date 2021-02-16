<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class EshopController extends Controller
{
    public function index()
    {
        $categories = DB::table('categories')->get();
        $books = DB::table('books')->get();
        return view('eshop.index', compact('categories', 'books'));
    }
}
