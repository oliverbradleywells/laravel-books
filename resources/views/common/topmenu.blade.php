<nav class="top-menu">

    <a {!! $current === 'books' ? 'class="current"' : '' !!} href="{{ action('BookController@index') }}">Books</a>
    <a {!! $current === 'publishers' ? 'class="current"' : '' !!} href="{{ action('PublisherController@index') }}">Publishers</a>
    <a {!! $current === 'bookshops' ? 'class="current"' : '' !!} href="{{ action('BookshopController@index') }}">Bookshops</a>

</nav>