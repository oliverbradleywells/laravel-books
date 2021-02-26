@extends('layouts.main')


@section('content')

    <div class="search-results">

        <h1>Search results</h1>

        <div class="search-results__pagination">
            {{ $books->links('vendor.pagination.default') }}
        </div>

        <div class="search-results__results">

            @foreach ($books as $book)

                <div class="search-results__book result-book">

                    <div class="result-book__title">{{ $book->title }}</div>

                    <div class="result-book__image">
                        <img src="{{ $book->image }}" alt="{{ $book->title . ' cover' }}">
                    </div>

                </div>

            @endforeach

        </div>

        <div class="search-results__pagination">
            {{ $books->links('vendor.pagination.default') }}
        </div>

    </div>

@endsection