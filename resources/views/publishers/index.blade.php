@extends('layouts.main', [
    'title' => 'List of publishers',
    'current_menu_item' => 'publishers'
])

@section('content')

<h1>List of publishers</h1>

<a href="{{ action('PublisherController@create') }}">New publisher</a>

<ul>
    @foreach($publishers as $p)
        <li>
            <a href="{{ action('PublisherController@show', $p->id) }}">
                {{ $p->title }}
            </a>
            &nbsp;
            <a href="{{ action('PublisherController@edit', $p->id) }}">edit</a>

            <h3>Books from {{ $p->title }}:</h3>
            <ul>
                @foreach ($p->books as $book)

                    <li>{{ $book->title }}</li>

                @endforeach
            </ul>
        </li>
    @endforeach
</ul>

@endsection