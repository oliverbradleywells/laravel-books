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
