<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class APIBookController extends Controller
{
    public function index()
    {
        if(isset($_GET['page'])){
            $page = $_GET['page'];
        }else{
            $page = 1;
        }

//        return DB::table('books')->get();

        return DB::table('books')->offset(($page - 1) * 4)->limit(4)->get();
    }
}
