<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    public function index()
    {
        $bookCount = DB::table('books')->count();

        $books = DB::table('books')->get();

        $a = 5;
        $b = 25;

        $review = 'This <script>window.location = "https://amazon.com";</script> is a <strong>great</strong> book catalogue!';

        return view('books.books')
            ->with('count', $bookCount)
            ->with('books', $books)
            ->with('newVariable', $a)
            ->with('review', $review)
            ->with('anotherVariable', $b);
    }
}
