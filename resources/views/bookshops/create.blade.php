<form action="{{ action('BookshopController@store') }}" method="post">
    @csrf

    <div class="form-field">

        <label for="">Name:</label><br>

        <input type="text" name="name" value="">

    </div>

    <div class="form-field">

        <label for="">City name:</label><br>

        <input type="text" name="city" value="">

    </div>

    <div class="form-field">

        <button>Save</button>

    </div>

</form>