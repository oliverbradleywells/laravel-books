<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bookshop;

class BookshopController extends Controller
{
    //
    public function create()
    {
        // /resources/views/bookshops/create.blade.php
        return view('bookshops/create');
    }

    public function store(Request $request)
    {
        $bookshop = new Bookshop;
        $bookshop->name = $request->input('name');
        $bookshop->city = $request->input('city');
        $bookshop->save();

        return redirect()->action('BookshopController@create');
    }

    public function index()
    {
        //           SELECT * FROM `bookshops` ORDER BY `id` DESC
        $bookshops = Bookshop::orderBy('id', 'desc')->get();

        //                             ['bookshops' => $bookshops]
        return view('bookshops/index', compact('bookshops')        );
    }
}
