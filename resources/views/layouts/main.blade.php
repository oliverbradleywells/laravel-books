<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $title ?? '' }} | Laravel Books Project</title>

    <link rel="stylesheet" href="{{ mix('css/books.css') }}">

    @yield('head_styles')
</head>
<body>

    @include('common.topmenu', [
        'current' => $current_menu_item ?? null
    ])

    @yield('alerts')

    @yield('content')

</body>
</html>