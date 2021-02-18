@extends('layouts.main', [
    'title' => 'Bookshops index',
    'current_menu_item' => 'bookshops'
])

@section('head_styles')

    <link rel="stylesheet" href="/css/bookshops.css">

@endsection

@section('content')

<h1>Bookshops</h1>

<div class="controls">
    <a href="{{ action('BookshopController@create') }}" class="new-button">Create bookshop</a>
</div>

<ul>

    @foreach ($bookshops as $bookshop)

        <li>
            {{ $bookshop->name }}
        </li>

    @endforeach

</ul>

@endsection