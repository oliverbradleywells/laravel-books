@extends('layouts.main')

@section('content')

    <h1>Edit an existing publisher</h1>

    <form action="{{ action('PublisherController@update', $publisher->id) }}" method="post">
        @csrf
        @method('PUT')
        <input type="text" name="title" value="{{ old('title', $publisher->title) }}">
        <input type="submit" value="Save this publisher">
    </form>

@endsection