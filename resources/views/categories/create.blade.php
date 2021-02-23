<h1>Eshop management</h1>
<h2>Create Category</h2>

@if ($errors->any())
    <div>
        <h4>Validation errors!</h4>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form method="post" action="{{ action('CategoryController@store') }}">
    @csrf
    <input type="text" name="name" value="{{ old('name') }}">
    <input type="submit" value="Create">
</form>
