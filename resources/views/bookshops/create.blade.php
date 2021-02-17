@extends('layouts/main')

@section('content')

    <form action="{{ action('BookshopController@store') }}" method="post">
        @csrf

        <div class="form-field">

            <label for="">Name:</label>

            <input type="text" name="name" value="">

        </div>

        <div class="form-field">

            <label for="">City name:</label>

            <input type="text" name="city" value="">

        </div>

        <div class="form-field">

            <button>Save</button>

        </div>

    </form>

@endsection