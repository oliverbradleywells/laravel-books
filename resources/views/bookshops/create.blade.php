@extends('layouts/main', [
    'title' => 'Create a bookshop'
])

@section('content')

    <form action="{{ action('BookshopController@store') }}" method="post">
        @csrf

        @component('components.form-field', ['label' => 'Name'])

            <input type="text" name="name" value="">

        @endcomponent

        @component('components.form-field', ['label' => 'City name'])

            <input type="text" name="city" value="">

        @endcomponent

        <div class="form-field">

            <button>Save</button>

        </div>

    </form>

@endsection