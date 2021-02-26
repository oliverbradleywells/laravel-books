<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Book;

class SearchController extends Controller
{
    /**
     * search within books
     */
    public function books()
    {
        $books = Book::orderBy('id')->paginate(20);

        return view('search.results', compact('books'));
    }
}
