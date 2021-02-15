<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    public function index()
    {
        $bookCount = DB::table('books')->count();
        $books     = DB::table('books')->get();

        $a = 5;
        $b = 25;

        $review = 'This <script>window.location = "https://amazon.com";</script> is a <strong>great</strong> book catalogue!';

//        return view('books.books')
//            ->with('count', $count)
//            ->with('books', $books)
//            ->with('newVariable', $a)
//            ->with('review', $review)
//            ->with('anotherVariable', $b);

//        return view('books.books')
//            ->with([
//                'count'           => $count,
//                'books'           => $books,
//                'newVariable'     => $a,
//                'review'          => $review,
//                'anotherVariable' => $b
//            ]);

//        return view('books.books', [
//            'count'           => $count,
//            'books'           => $books,
//            'newVariable'     => $a,
//            'review'          => $review,
//            'anotherVariable' => $b
//        ]);

//        return [
//            'count'  => $count,
//            'books'  => $books,
//            'review' => $review,
//        ];

//        return compact(['count', 'books', 'review']);

        // this approach does not allow to rename the variables
        $view = view('books.books', compact([
            'count',
            'books',
            'review'
        ]));
    }
}
